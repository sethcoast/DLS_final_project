# Pruning Experiments

This directory contains *most* of the files necessary for our pruning experiments. The only thing that is missing is the ImageNet dataset, 
which we cannot include here for obvious reasons. 

## Explanation of Subfolder

The files contained in this directory are as follows:
- prune.ipynb
  - This file contains the code for pruning the networks and saving them to a local specified file
  - Creates 20 pruned networks and saves them in the models folder
- compute_metrics.ipynb
  - Loads pruned networks
  - Creates a 10k img dataset for each of the 20 pruned networks (using the same noise and label vectors for parity)
  - Computes the FID score between each dataset and the validation set of ImageNet (not included in this repo)
  - Computes the Inception score for each dataset
  - Computes the number of non-zero parameters for each of the 20 pruned models
  - Creates and displays visualizations for the FID and IS scores, as well as qualitative results comparing pruned models at varying thresholds
- resize_imagenet.ipynb
  - Resizes the imagenet validation set (2012) to be the same size as the generated images (both for parity and space reduction)
- noise.pt
  - The noise vector used to generate the 20 datasets
- label.pt
  - The label vector used to generate the 20 datasets
- models
  - The actual pruned models. Contains two sub-folders containing the models for the two tested pruning methods, "l1" (layerwise) and "global" (10 models for each method).

## Note
It is important to note, that this code WILL NOT run out of the box for a user wishing to perform their own pruning experiments, for a few reasons, namely:

1. These experiments were performed on a Colab Pro+ account, and thus *expect* the user to have mounted their google drive. Both files read and write to google drive.
    - To remedy this, simply change the filepaths for reading/writing models and data.
2. This repo DOES NOT include the ImageNet validation set (2012) as required in the experiments.

However! The code is well commented and should otherwise be self-explanatory. Also each notebook provides helpful visualizations of the results!



