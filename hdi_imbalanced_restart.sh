#! /bin/bash

python -m src.scripts.cluster.cluster_sobel_twohead \
--model_ind 42 \
--arch ClusterResNet50TwoHead \
--mode IID \
--dataset HDI_imbalanced \
--dataset_root ./data/HDI_imbalanced \
--gt_k 7 \
--output_k_A 21 \
--output_k_B 7 \
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
--restart