function Labels = mri_getlabels_svreg()
% ATLAS     : BrainSuite SVREG (Brainsuite1, USCBrain)
% REFERENCE : http://brainsuite.org/uscbrain-description/

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

Labels = {...
       0, 'Background',                                         [    0    0    0]; ...
       1, 'CSF',                                                [  255    0    0]; ...
       2, 'GM',                                                 [    0  255    0]; ...
       3, 'WM',                                                 [  255  255    0]; ...
       4, 'GM/CSF',                                             [    0    0  255]; ...
       5, 'GM/WM',                                              [  255    0  255]; ...
       6, 'CSF/other',                                          [  255  255  255]; ...
      16, 'Scalp',                                              [  122  157  221]; ...
      17, 'Skull',                                              [  176  176  176]; ...
      18, 'Space',                                              [    0    0  255]; ...
      19, 'Brain',                                              [  128    0   64]; ...
     100, 'Frontal lobe R',                                     [  149   46  145]; ...
     101, 'Frontal lobe L',                                     [  242   56  240]; ...
     110, 'Lateral frontal lobe R',                             [  175  236   13]; ...
     111, 'Lateral frontal lobe L',                             [   80   19  242]; ...
     120, 'Superior frontal gyrus R',                           [    0  255  127]; ...
     121, 'Superior frontal gyrus L',                           [  255    0  128]; ...
     130, 'Middle frontal gyrus R',                             [  128  255  255]; ...
     131, 'Middle frontal gyrus L',                             [  127    0    0]; ...
     140, 'Inferior frontal gyrus R',                           [  175  236   13]; ...
     141, 'Inferior frontal gyrus L',                           [   80   19  242]; ...
     142, 'Pars opercularis R',                                 [  255  255    0]; ...
     143, 'Pars opercularis L',                                 [    0    0  255]; ...
     144, 'Pars triangularis R',                                [  127    0  128]; ...
     145, 'Pars triangularis L',                                [  128  255  127]; ...
     146, 'Pars orbitalis R',                                   [  255  255    0]; ...
     147, 'Pars orbitalis L',                                   [    0    0  255]; ...
     150, 'Pre-central gyrus R',                                [  128  255    0]; ...
     151, 'Pre-central gyrus L',                                [  127    0  255]; ...
     160, 'Pole/orbital frontal lobe R',                        [  175  236   13]; ...
     161, 'Pole/orbital frontal lobe L',                        [   80   19  242]; ...
     162, 'Transvers frontal gyrus R',                          [  255  255    0]; ...
     163, 'Transvers frontal gyrus L',                          [    0    0  255]; ...
     164, 'Gyrus rectus R',                                     [  255    0  255]; ...
     165, 'Gyrus rectus L',                                     [    0  255    0]; ...
     166, 'Middle orbito-frontal gyrus R',                      [  128  255    0]; ...
     167, 'Middle orbito-frontal gyrus L',                      [  127    0  255]; ...
     168, 'Anterior orbito-frontal gyrus R',                    [  255    0  128]; ...
     169, 'Anterior orbito-frontal gyrus L',                    [    0  255  127]; ...
     170, 'Posterior orbito-frontal gyrus R',                   [  128  255  255]; ...
     171, 'Posterior orbito-frontal gyrus L',                   [  127    0    0]; ...
     172, 'Lateral orbitofrontal gyrus R',                      [  128    0  255]; ...
     173, 'Lateral orbitofrontal gyrus L',                      [  127  255    0]; ...
     180, 'Mesial frontal lobe R',                              [  175  236   13]; ...
     181, 'Mesial frontal lobe L',                              [   80   19  242]; ...
     182, 'Paracentral lobule R',                               [  255    0    0]; ...
     183, 'Paracentral lobule L',                               [    0  255  255]; ...
     184, 'Cingulate gyrus R',                                  [  255  255  128]; ...
     185, 'Cingulate gyrus L',                                  [    0    0  127]; ...
     186, 'Subcallosal gyrus R',                                [  255    0    0]; ...
     187, 'Subcallosal gyrus L',                                [    0  255  255]; ...
     200, 'Parietal lobe R',                                    [  117  236   61]; ...
     201, 'Parietal lobe L',                                    [  171  242   49]; ...
     220, 'Lateral parietal lobe R',                            [  175  236   13]; ...
     221, 'Lateral parietal lobe L',                            [   80   19  242]; ...
     222, 'Post-central gyrus R',                               [  128  127    0]; ...
     223, 'Post-central gyrus L',                               [  127  128  255]; ...
     224, 'Supramarginal gyrus R',                              [    0  128  127]; ...
     225, 'Supramarginal gyrus L',                              [  255  127  128]; ...
     226, 'Angular gyrus R',                                    [  255  255  127]; ...
     227, 'Angular gyrus L',                                    [    0    0  128]; ...
     228, 'Superior parietal gyrus R',                          [    0  128  255]; ...
     229, 'Superior parietal gyrus L',                          [  255  127    0]; ...
     240, 'Mesial parietal lobe R',                             [  175  236   13]; ...
     241, 'Mesial parietal lobe L',                             [   80   19  242]; ...
     242, 'Pre-cuneus R',                                       [    0  255    0]; ...
     243, 'Pre-cuneus L',                                       [  255    0  255]; ...
     300, 'Temporal lobe R',                                    [   50  132  236]; ...
     301, 'Temporal lobe L',                                    [   93  239  242]; ...
     310, 'Temporal pole R',                                    [  255    0    0]; ...
     311, 'Temporal pole L',                                    [    0  255  255]; ...
     320, 'Lateral/superior temporal lobe R',                   [  128  255  127]; ...
     321, 'Lateral/superior temporal lobe R',                   [  127    0  128]; ...
     322, 'Superior temporal gyrus R',                          [  128  255  127]; ...
     323, 'Superior temporal gyrus L',                          [  127    0  128]; ...
     324, 'Transverse temporal gyrus R',                        [  255    0  128]; ...
     325, 'Transverse temporal gyrus L',                        [    0  255  127]; ...
     326, 'Middle temporal gyrus R',                            [  255    0  255]; ...
     327, 'Middle temporal gyrus L',                            [    0  255    0]; ...
     328, 'Inferior temporal gyrus R',                          [  128  255  255]; ...
     329, 'Inferior temporal gyrus L',                          [  127    0    0]; ...
     330, 'Fusiforme gyrus R',                                  [  255  255    0]; ...
     331, 'Fusiforme gyrus L',                                  [    0    0  255]; ...
     340, 'Infero/mesial temporal lobe R',                      [    0    0  255]; ...
     341, 'Infero/mesial temporal lobe L',                      [  255  255    0]; ...
     342, 'Parahippocampal gyrus R',                            [    0    0  255]; ...
     343, 'Parahippocampal gyrus L',                            [  255  255    0]; ...
     344, 'Hippocampus R',                                      [  255  128  127]; ...
     345, 'Hippocampus L',                                      [    0  127  128]; ...
     346, 'Amygdala R',                                         [  255  128    0]; ...
     347, 'Amygdala L',                                         [    0  127  255]; ...
     370, 'Hippocampus R',                                      [  255  128  127]; ...
     371, 'Hippocampus L',                                      [    0  127  128]; ...
     400, 'Occipital lobe R',                                   [  255  252  122]; ...
     401, 'Occipital lobe L',                                   [  242  225   42]; ...
     420, 'Lateral occipital lobe R',                           [  175  236   13]; ...
     421, 'Lateral occipital lobe L',                           [   80   19  242]; ...
     422, 'Superior occipital gyrus R',                         [  128  127    0]; ...
     423, 'Superior occipital gyrus L',                         [  127  128  255]; ...
     424, 'Middle occipital gyrus R',                           [  128  255    0]; ...
     425, 'Middle occipital gyrus L',                           [  127    0  255]; ...
     440, 'Infero/mesial occipital lobe R',                     [  175  236   13]; ...
     441, 'Infero/mesial occipital lobe L',                     [   80   19  242]; ...
     442, 'Inferior occipital gyrus R',                         [  127    0  255]; ...
     443, 'Inferior occipital gyrus L',                         [  128  255    0]; ...
     444, 'Lingual gyrus R',                                    [  127    0  127]; ...
     445, 'Lingual gyrus L',                                    [  128  255  128]; ...
     446, 'Cuneus R',                                           [  255  128  255]; ...
     447, 'Cuneus L',                                           [    0  127    0]; ...
     500, 'Insula R',                                           [  127  255  128]; ...
     501, 'Insula L',                                           [  128    0  127]; ...
     600, 'Central gray structures R',                          [  175  236   13]; ...
     601, 'Central gray structures L',                          [   80   19  242]; ...
     610, 'Basal ganglia R',                                    [  175  236   13]; ...
     611, 'Basal ganglia L',                                    [   80   19  242]; ...
     612, 'Caudate nucleus R',                                  [  127  128  255]; ...
     613, 'Caudate nucleus L',                                  [  128  127    0]; ...
     614, 'Putamen R',                                          [  255  255    0]; ...   % OLD: 630
     615, 'Putamen L',                                          [    0    0  255]; ...   % OLD: 631
     616, 'Pallidum R',                                         [  128    0  127]; ...   % OLD: 640
     617, 'Pallidum L',                                         [  127  255  128]; ...   % OLD: 641
     620, 'Accumbens R',                                        [    0  255  255]; ...
     621, 'Accumbens L',                                        [  255    0    0]; ...
     630, 'Claustrum R',                                        [  255    0    0]; ...
     631, 'Claustrum L',                                        [    0  255  255]; ...
     640, 'Thalamus R',                                         [    0  255  255]; ...   % OLD: 660
     641, 'Thalamus L',                                         [  255    0    0]; ...   % OLD: 661
     650, 'Basal forebrain R',                                  [    0  128    0]; ...
     651, 'Basal forebrain L',                                  [  255  127  255]; ...
     660, 'Lateral geniculate nucleus R',                       [  128    0    0]; ...
     661, 'Lateral geniculate nucleus L',                       [  127  255  255]; ...
     662, 'Medial geniculate nucleus R',                        [  127  127  255]; ...
     663, 'Medial geniculate nucleus L',                        [  128  128    0]; ...
     670, 'Superior colliculus R',                              [  255  128    0]; ...
     671, 'Superior colliculus L',                              [    0  127  255]; ...
     680, 'Inferior colliculus R',                              [  255    0  128]; ...
     681, 'Inferior colliculus L',                              [    0  255  127]; ...
     690, 'Mamillary body R',                                   [  127  255  127]; ...
     691, 'Mamillary body L',                                   [  128    0  128]; ...
     700, 'Ventricular system R',                               [  175  236   13]; ...
     701, 'Ventricular system L',                               [   80   19  242]; ...
     710, 'Pineal gland',                                       [  255  255    0]; ...
     720, 'Lateral ventricle R',                                [  255  255    0]; ...
     721, 'Lateral ventricle L',                                [    0    0  255]; ...
     740, 'Third ventricle',                                    [    0    0  127]; ...
     760, 'Fourth ventricle',                                   [    0    0  255]; ...
     780, 'Cerebral aqueduct',                                  [  175  236   13]; ...
     800, 'Brainstem',                                          [  127    0  127]; ...
     850, 'Corpus Callosum',                                    [  255    0    0]; ...
     900, 'Cerebellum',                                         [  128   64   64]; ...
    4000, 'Central sulcus R',                                   [   18    0  242]; ...
    4001, 'Central sulcus L',                                   [   18    0  242]; ...
    4002, 'Precentral sulcus R',                                [   35  235   61]; ...
    4003, 'Precentral sulcus L',                                [   35  235   61]; ...
    4004, 'Superior frontal sulcus R',                          [  245  125  249]; ...
    4005, 'Superior frontal sulcus L',                          [  245  125  249]; ...
    4006, 'Inferio frontal sulcus R',                           [    0  255  255]; ...
    4007, 'Inferio frontal sulcus L',                           [    0  255  255]; ...
    4008, 'Ascending branch of the Sylvian fissure R',          [  236   55  173]; ...
    4009, 'Ascending branch of the Sylvian fissure L',          [  236   55  173]; ...
    4010, 'Horizontal branch of the Sylvian fissure R',         [    0  122  244]; ...
    4011, 'Horizontal branch of the Sylvian fissure L',         [    0  122  244]; ...
    4012, 'Diagonal sulcus R',                                  [  192  128  255]; ...
    4013, 'Diagonal sulcus L',                                  [  192  128  255]; ...
    4014, 'Lateral orbital sulcus R',                           [   17  238  193]; ...
    4015, 'Lateral orbital sulcus L',                           [   17  238  193]; ...
    4016, 'Frontomarginal sulcus R',                            [  125  190  255]; ...
    4017, 'Frontomarginal sulcus L',                            [  125  190  255]; ...
    4018, 'Cingulate sulcus R',                                 [  170  253  251]; ...
    4019, 'Cingulate sulcus L',                                 [  170  253  251]; ...
    4020, 'Paracentral sulcus R',                               [   52  180   78]; ...
    4021, 'Paracentral sulcus L',                               [   52  180   78]; ...
    4022, 'Superior supra orbital sulcus R',                    [  255  255    0]; ...
    4023, 'Superior supra orbital sulcus L',                    [  255  255    0]; ...
    4024, 'Inferior supra orbital sulcus R',                    [  255  255    0]; ...
    4025, 'Inferior supra orbital sulcus L',                    [  255  255    0]; ...
    4026, 'Olfactory or medial orbital sulcus R',               [  125  190  255]; ...
    4027, 'Olfactory or medial orbital sulcus L',               [  125  190  255]; ...
    4028, 'H shaped sulci, mesial R',                           [  255    0    0]; ...
    4029, 'H shaped sulci, mesial L',                           [  255    0    0]; ...
    4030, 'H shaped sulci, lateral R',                          [  255    0    0]; ...
    4031, 'H shaped sulci, lateral L',                          [  255    0    0]; ...
    4032, 'H shaped sulci, transverse R',                       [  255    0    0]; ...
    4033, 'H shaped sulci, transverse L',                       [  255    0    0]; ...
    4034, 'Sylvian fissure terminal split R',                   [  255  255    0]; ...
    4035, 'Sylvian fissure terminal split L',                   [  255  255    0]; ...
    4036, 'Superior temporal sulcus R',                         [   17  238  193]; ...
    4037, 'Superior temporal sulcus L',                         [   17  238  193]; ...
    4038, 'Inferior temporal sulcus R',                         [  245  152   90]; ...
    4039, 'Inferior temporal sulcus L',                         [  245  152   90]; ...
    4040, 'Occipito temporal sulcus R',                         [   92    0  185]; ...
    4041, 'Occipito temporal sulcus L',                         [   92    0  185]; ...
    4042, 'Collateral or medial occipito temporal sulcus R',    [  217    0  255]; ...
    4043, 'Collateral or medial occipito temporal sulcus L',    [  217    0  255]; ...
    4044, 'Transverse temporal sulcus R',                       [   35  235   61]; ...
    4045, 'Transverse temporal sulcus L',                       [   35  235   61]; ...
    4046, 'Circular sulcus R',                                  [  217    0  255]; ...
    4047, 'Circular sulcus L',                                  [  217    0  255]; ...
    4048, 'Postcentral sulcus R',                               [   35  235   61]; ...
    4049, 'Postcentral sulcus L',                               [   35  235   61]; ...
    4050, 'Intraparietal sulcus R',                             [  245  125  249]; ...
    4051, 'Intraparietal sulcus L',                             [  245  125  249]; ...
    4052, 'Primary sulcus of Jensen R',                         [    0  255  255]; ...
    4053, 'Primary sulcus of Jensen L',                         [    0  255  255]; ...
    4054, 'Secondary sulcus of Jensen R',                       [    0  255  255]; ...
    4055, 'Secondary sulcus of Jensen L',                       [    0  255  255]; ...
    4056, 'Parieto occipital sulcus R',                         [  128  128    0]; ...
    4057, 'Parieto occipital sulcus L',                         [  128  128    0]; ...
    4058, 'Subparietal sulcus R',                               [    0  255  255]; ...
    4059, 'Subparietal sulcus L',                               [    0  255  255]; ...
    4060, 'Calcarine sulcus R',                                 [   18    0  242]; ...
    4061, 'Calcarine sulcus L',                                 [   18    0  242]; ...
    4062, 'Calcarine sulcus terminal T R',                      [  255    0  255]; ...
    4063, 'Calcarine sulcus terminal T L',                      [  255    0  255]; ...
    4064, 'Transverse occipital sulcus superior R',             [   17  238  193]; ...
    4065, 'Transverse occipital sulcus superior L',             [   17  238  193]; ...
    4066, 'Superior lateral occipital sulcus R',                [   92    0  185]; ...
    4067, 'Superior lateral occipital sulcus L',                [   92    0  185]; ...
    4068, 'Inferior lateral occipital sulcus R',                [   92    0  185]; ...
    4069, 'Inferior lateral occipital sulcus L',                [   92    0  185]; ...
    4070, 'Anterior occipital sulcus R',                        [    0  122  244]; ...
    4071, 'Anterior occipital sulcus L',                        [    0  122  244]; ...
};

% Duplicate labels < 1000:  GM=1000+label, WM=2000+label
iDup = find([Labels{:,1}] < 1000);
Labels = cat(1, Labels, ...
    cat(2, cellfun(@(c)plus(1000, c), Labels(iDup,1), 'UniformOutput', 0), cellfun(@(c)cat(2, 'GM ', c), Labels(iDup,2), 'UniformOutput', 0), Labels(iDup,3)), ...
    cat(2, cellfun(@(c)plus(2000, c), Labels(iDup,1), 'UniformOutput', 0), cellfun(@(c)cat(2, 'WM ', c), Labels(iDup,2), 'UniformOutput', 0), Labels(iDup,3)));

