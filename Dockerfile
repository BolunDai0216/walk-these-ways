FROM nvidia/cuda:11.3.1-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential

RUN apt-get install -y --no-install-recommends \
    python3-pip \
    python3-dev \
    curl \
    libcurl4-openssl-dev \
    libssl-dev \
    mesa-common-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libx11-dev

RUN python3 -m pip install \
    torch==1.10.0+cu113 \
    torchvision==0.11.1+cu113 \
    torchaudio==0.10.0+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

CMD ["bash"]