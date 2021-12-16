
function train {
	# file path
	bs=$1
	save_dir='gan' # Here trained model, checkpoints and other info will be saved
	IS_dir='stat_real' # For the training ignore it
	FID_dir='Get_ImageNet_FID'  # For the training ignore it
	real_dir='/home/gh/scratch/Project/ACCV_TinyGAN/data/comp_images/comp_IMAGENET_1000_2' # Real imagenet dataset
	img_dir='data/BigGANs_data/images'  # Data generated from big gans
	z_path='data/BigGANs_data/all_noises.npy' #noises corresponding to big gans
	lb_path='data/BigGANs_data/all_labels.npy' # class label of the images

	cmd=(python3 main.py
		--batch_siz ${bs}
		--save_dir ${save_dir}
		--real_incep_stat_dir ${IS_dir}
		--real_fid_stat_dir ${FID_dir}
		--real_dir ${real_dir}
		--image_dir ${img_dir}
		--z_path ${z_path}
		--label_path ${lb_path}
		--mode train)

	CUDA_VISIBLE_DEVICES=0 ${cmd[@]}
}



train 128 #originally it was 32 but to accelerate the training we kept 4*32 = 128
