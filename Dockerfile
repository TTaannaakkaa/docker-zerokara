FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
USER root

RUN apt-get update

RUN apt-get install -y vim less
RUN apt-get install -y python3-pip \
    python3-tk \
    neovim

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

RUN pip3 install numpy==1.24.2 \
scipy==1.10.1 \
matplotlib==3.7.1 \
tqdm==4.65.0



