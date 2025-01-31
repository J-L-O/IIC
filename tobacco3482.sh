#! /bin/bash

python -m src.scripts.cluster.cluster_sobel_twohead \
--model_ind 42 \
--arch ClusterResNet50TwoHead \
--mode IID \
--dataset tobacco3482 \
--dataset_root ./data/tobacco3482-240 \
--gt_k 10 \
--output_k_A 30 \
--output_k_B 10 \
--lamb 1.0 \
--lr 0.0001  \
--num_epochs 2000 \
--batch_sz 120 \
--num_dataloaders 5 \
--num_sub_heads 5 \
--mix_train \
--crop_orig \
--rand_crop_sz 224 \
--input_sz 224 \
--head_A_first \
--double_eval \
--batchnorm_track