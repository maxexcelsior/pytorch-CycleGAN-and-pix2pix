set -ex
python train.py --dataroot ./datasets/facades --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --lambda_L1 100 --dataset_mode aligned --norm batch --pool_size 0


python train.py --dataroot ./datasets/shoes --name shoes_pix2pix --model pix2pix --direction AtoB --continue_train --pool_size 50
#pair A and B facades
python datasets/combine_A_and_B.py --fold_A ./path/to/facade_data/A --fold_B ./path/to/facade_data/B --fold_AB ./path/to/facade_data


#pair A and B shoes
python datasets/combine_A_and_B.py --fold_A ./path/to/shoes_data/A --fold_B ./path/to/shoes_data/B --fold_AB ./path/to/shoes_data/AB

#pair A and B architecture
python datasets/combine_A_and_B.py --fold_A ./path/to/archi_data/A --fold_B ./path/to/archi_data/B --fold_AB ./path/to/archi_data/AB


#服务器
python -m visdom.server