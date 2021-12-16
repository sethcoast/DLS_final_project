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
