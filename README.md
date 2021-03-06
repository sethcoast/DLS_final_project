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

### Train the network
1. First install anaconda on your machine
2.  Make a conda environment using following command <i>conda create --name TinyGANs python=3.8.10 tensorflow-gpu</i>
3. Deactivate the "base" environment using following command <i>conda deactivate</i>
4. Activate TinyGANs environment using following command <i>conda activate TinyGANs</i>
5. Install torch and torch vision <i>pip install torch==1.2. pip install torchvision==0.4.0</i>
6. In the train.sh file set appropriate paths to dataset, and specify batchsize
7. Execute the command <i>bash train.sh > terminal_log/submission_1/log.txt

### Pruning
Check out the "pruning" subfolder for explanation of experiments, description of code, and results of experiments!

### Results
1. Enhancement of the images generated by TinyGANs during training.
![Inference during the training](https://github.com/sethcoast/DLS_final_project/blob/main/video/video_my_test.mp4)
2. The results of the pruning experiments can be found in the "pruning" subfolder

  
### References
1. Chang, T. Y., & Lu, C. J. (2020). TinyGAN: Distilling BigGAN for Conditional Image Generation. In Proceedings of the Asian Conference on Computer Vision.
2. Brock, A., Donahue, J., & Simonyan, K. (2018). Large scale GAN training for high fidelity natural image synthesis. arXiv preprint arXiv:1809.11096.
3. BigGAN TF-hub, https://www.tensorflow.org/hub/tutorials/biggan_generation_with_tf_hub
4. Deng, J., Dong, W., Socher, R., Li, L. J., Li, K., & Fei-Fei, L. (2009, June). Imagenet: A large-scale hierarchical image database. In 2009 IEEE conference on computer vision and pattern recognition (pp. 248-255). Ieee.
5. Paszke, A., Gross, S., Massa, F., Lerer, A., Bradbury, J., Chanan, G., ... & Chintala, S. (2019). Pytorch: An imperative style, high-performance deep learning library. Advances in neural information processing systems, 32, 8026-8037
6. Inception Score and Frechlet Inception Distance: Shichang Tang repository, https://github.com/tsc2017/
7. Bilogur, Aleksey (2020, Dec 12), A developer friendly guide to model pruning in PyTorch, https://spell.ml/blog/model-pruning-in-pytorch-X9pXQRAAACIAcH9h?fbclid=IwAR3_iGmt9l64_Qp1V-xjfZ0A2qu9r2QifzH4kfXJ1Ua66nvVEkvq-fDaFbQ  




