FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel
COPY . /iic
WORKDIR /iic
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN ["pip", "install", "-r", "./requirements.txt"]
ENTRYPOINT ["python", "-m", "src.scripts.cluster.cluster_sobel_twohead.py", "--model_ind 42", "--arch ClusterNet5gTwoHead",
            "--mode IID", "--num_dataloaders 5", "--num_sub_heads 5", "--mix_train", "--crop_orig",
            "--rand_crop_sz 224", "--input_sz 224", "--head_A_first", "--double_eval", "--batchnorm_track"]
            # "--dataset IMPACT_Full_Balanced", "--dataset_root ./data/IMPACT_Full_Balanced_240", "--gt_k 5",
            # "--output_k_A 20", "--output_k_B 5", "--lamb 1.0", "--lr 0.0001", "--num_epochs 2000", "--batch_sz 100",
