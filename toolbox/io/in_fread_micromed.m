function F = in_fread_micromed(sFile, sfid, SamplesBounds, ChannelsRange)
% IN_FREAD_MICROMED:  Read a block of recordings from a Micromed TRC file
%
% USAGE:  F = in_fread_micromed(sFile, sfid, SamplesBounds=[], ChannelsRange=[])

% @=============================================================================
% This function is part of the Brainstorm software:
% https://neuroimage.usc.edu/brainstorm
% 
% Copyright (c) University of Southern California & McGill University
% This software is distributed under the terms of the GNU General Public License
% as published by the Free Software Foundation. Further details on the GPLv3
% license can be found at http://www.gnu.org/copyleft/gpl.html.
% 
% FOR RESEARCH PURPOSES ONLY. THE SOFTWARE IS PROVIDED "AS IS," AND THE
% UNIVERSITY OF SOUTHERN CALIFORNIA AND ITS COLLABORATORS DO NOT MAKE ANY
% WARRANTY, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
% MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, NOR DO THEY ASSUME ANY
% LIABILITY OR RESPONSIBILITY FOR THE USE OF THIS SOFTWARE.
%
% For more information type "brainstorm license" at command prompt.
% =============================================================================@
%
% Authors: Francois Tadel, 2017

% Parse inputs
if (nargin < 4) || isempty(ChannelsRange)
    ChannelsRange = [1, sFile.header.num_channels];
end
if (nargin < 3) || isempty(SamplesBounds)
    SamplesBounds = round(sFile.prop.times .* sFile.prop.sfreq);
end

% ===== COMPUTE OFFSETS =====
nChannels     = double(sFile.header.num_channels);
nReadTimes    = SamplesBounds(2) - SamplesBounds(1) + 1;
nReadChannels = double(ChannelsRange(2) - ChannelsRange(1) + 1);
% Data type
bytesPerVal = sFile.header.num_bytes;
switch bytesPerVal
    case 1, dataClass = 'uint8';
    case 2, dataClass = 'uint16';
    case 4, dataClass = 'uint32';
end

% Sample offset of the first block, for reduced files
if isfield(sFile.header, 'smp_offset') && ~isempty(sFile.header.smp_offset)
    smp_offset = sFile.header.smp_offset;
else
    smp_offset = 0;
end
% Time offset
offsetTime = round((SamplesBounds(1) - smp_offset) * nChannels * bytesPerVal);
% Channel offset at the beginning and end of each channel block
offsetChannelStart = round((ChannelsRange(1)-1) * bytesPerVal);
offsetChannelEnd   = (nChannels - ChannelsRange(2)) * bytesPerVal;
% Start reading at this point
offsetStart = sFile.header.data_offset + offsetTime + offsetChannelStart;
% Number of time samples to skip after each channel
offsetSkip = offsetChannelStart + offsetChannelEnd; 

% ===== READ DATA BLOCK =====
% Position file at the beginning of the trial
fseek(sfid, offsetStart, 'bof');
% Read trial data
% => WARNING: CALL TO FREAD WITH SKIP=0 DOES NOT WORK PROPERLY
if (offsetSkip == 0)
    F = fread(sfid, [nReadChannels, nReadTimes], dataClass);
else
    precision = sprintf('%d*%s', nReadChannels, dataClass);
    F = fread(sfid, [nReadChannels, nReadTimes], precision, offsetSkip);
end
% Check that data block was fully read
if (numel(F) < nReadTimes * nReadChannels)
    % Error message
    disp(sprintf('BST> ERROR: File is truncated (%d values were read instead of %d)...', numel(F), nReadTimes * nReadChannels));
    % Pad with zeros 
    Ftmp = zeros(nReadChannels, nReadTimes);
    Ftmp(1:numel(F)) = F(:);
    F = Ftmp;
end
% Apply offset and gains
chan = sFile.header.electrode(ChannelsRange(1):ChannelsRange(2));
F = bst_bsxfun(@minus, F, [chan.logicGround]');
F = bst_bsxfun(@times, F, ([chan.physicalMin]' - [chan.physicalMax]') ./ ([chan.logicMax]' - [chan.logicMin]' + 1) .* [chan.unit_gain]');

