FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-devel
COPY . /iic
WORKDIR /iic
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN ["pip", "install", "-r", "./requirements.txt"]
RUN ["chmod", "+x", "./hdi_balanced.sh"]
RUN ["chmod", "+x", "./hdi_imbalanced.sh"]
RUN ["chmod", "+x", "./hdi_balanced_restart.sh"]
RUN ["chmod", "+x", "./hdi_imbalanced_restart.sh"]
RUN ["chmod", "+x", "./tobacco3482.sh"]
RUN ["chmod", "+x", "./rvl-cdip.sh"]
