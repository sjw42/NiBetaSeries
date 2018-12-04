-- -*- lua -*-
------------------------------------------------------------------------
-- fmriprep latest
------------------------------------------------------------------------
help([[
fmriprep is a functional magnetic resonance imaging (fMRI) data preprocessing pipeline that is designed to provide an easily accessible, state-of-the-art interface that is robust to variations in scan acquisition protocols and that requires minimal user input, while providing easily interpretable and comprehensive error and output reporting. It performs basic processing steps (coregistration, normalization, unwarping, noise component extraction, segmentation, skullstripping etc.) providing outputs that can be easily submitted to a variety of group level analyses, including task-based or resting-state fMRI, graph theory measures, surface or volume-based statistics, etc.
]])

-- Whatis description
whatis('Description: A Robust Preprocessing Pipeline for fMRI Data')
whatis('URL: https://fmriprep.readthedocs.io/en/latest/')
whatis('singularity pull shub://jpetucci/fmriprep_icsaci:rec')
unsetenv("LD_PRELOAD")
local fmriprep = [==[
/usr/bin/singularity run /path/to/singularity/image "$@";
]==]

set_shell_function("fmriprep",fmriprep,fmriprep)

