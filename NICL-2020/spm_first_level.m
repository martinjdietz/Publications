

% 1. First-level analysis of fMRI data

inputs{1} = D; % raw data (*.dcm)
inputs{2} = P; % analysis directory 
inputs{3} = R; % results directory
inputs{4} = C; % multiple conditions file (*.mat)

spm('defaults','fmri');
spm_jobman('initcfg');
spm_get_defaults('cmdline',true);

load ffx.mat
    
spm_jobman('serial', matlabbatch, '', inputs{:});

 
% 2. Second-level analysis

% Use SPM batch


