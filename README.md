### Project Objective
In the past few years, GANS have demonstrated an exemplary performance in generating
synthetic images. By scaling up the model and batch size, generative models are able to generate
high-quality images. The scaling of the model results in computationally taxing and memory
intensive models, due to which these models cannot be deployed on resource-constrained
(namely, energy and memory) devices. In this project, we will leverage the Knowledge
Distillation (KD) framework to reduce the model complexity, memory footprint and the
inference time of the generative model without affecting its performance. In particular, we will
utilize a teacher-student framework proposed in [Chang T. Y. et al. (2020)], which aims to
transfer the knowledge of the well-trained complex BigGANs teacher network to the fairly
compact student network

### Approach/Techniques
Knowledge distillation in GANs has only been successfully attempted by a handful of
researchers. Most notably the authors of TinyGAN were able to successfully perform KD on
Google’s BigGan by using a combination of clever objective functions. We will be using
TinyGAN’s implementation and Github repository to perform KD on BigGAN. Our base goal is
to simply perform KD on BigGAN using TinyGAN. If we are able to successfully perform KD
with TinyGAN, we hope to expand on TinyGAN by exploring network pruning and/or
quantization to further reduce the size and memory of our network

### Data
#### BigGANs Dataset (input/output pairs): 
1. First install anaconda on your machine
2. Make a conda environment using following command <i>conda create --name BigGANs python=3.8.10 tensorflow-gpu</i>
3. Deactivate the "base" environment using following command <i>conda deactivate</i>
4. Activate BigGANs environment using following command <i>conda activate BigGANs</i>
5. Install jupyter notebook <i>conda install notebook  jupyter notebook</i>
6. Run the following jupyter notebook
7.  It can be downloaded from [here](https://www.tensorflow.org/hub/tutorials/biggan_generation_with_tf_hub)

[biggan_generation_with_tf_hub.ipynb](https://github.com/sethcoast/DLS_final_project/blob/main/biggan_generation_with_tf_hub.ipynb)

#### ImageNet Dataset (real distribution dataset): 
1. Downlaod the ImageNet dataset (ILSVRC 2012) from [here](https://www.image-net.org/challenges/LSVRC/) <i>"Training images (Task 1 & 2). 138GB." file.</i>
2. Ensure you have sufficient memory on your disk to save the dataset and this process gonna take around 10 hours (vary with the internet connectivity)
3. It will give a tar file "ILSVRC2012_img_train.tar" and you need to untar it using the following command <i>tar -xvf ILSVRC2012_img_train.tar --one-top-level</i>
4. It will give you sub directories and repeat the same thing with sub-directories.
5. Above process will take approximately 1-2 hours depending on the architecture of your system
6. Now, we need to preprocess the dataset using the script utils/preprocess.sh. Reference for the [file](https://github.com/pfnet-research/sngan_projection)
7. Execute the following command for preprocessing on your terminal/console.

<i>IMAGENET_TRAIN_DIR=/path/to/imagenet/train/ # path to the parent directory of category directories named "n0*******".</i>

<i>PREPROCESSED_DATA_DIR=/path/to/save_dir/</i>

<i>cd utils/</i>

<i>bash preprocess.sh $IMAGENET_TRAIN_DIR $PREPROCESSED_DATA_DIR</i>

***NOTE:*** Above operations will transforms all images into a shape of 256 x 256 using "convert" linux command. The entire operation gonna take approximately 24 hours.



