set -ex
python test.py --dataroot ./datasets/facades --name facades_pix2pix --model pix2pix --netG unet_256 --direction BtoA --dataset_mode aligned --norm batch


#test shoes
python test.py --dataroot ./datasets/shoes --name shoes_pix2pix --model pix2pix --direction AtoB