# ##############################################################################
# BASE IMAGE
# ##############################################################################
# PYTHON
FROM python:3.8-slim-buster
# FROM python:3.8-slim-buster   # 114 Mb
# FROM python:3.8-alpine        # 43Mb

# UBUNTU
# FROM ubuntu:20.04             # 72.8MB  (before installing python)

# NVIDIA CUDA
# FROM nvidia/cuda:11.2.0-cudnn8-runtime-ubuntu20.04   # 3.17GB (before installing python)


# ##############################################################################
# PYTHON
# ##############################################################################
# INSTALL PYTHON 3.8 (If using ubuntu base image)
# RUN apt-get update &&\
#     DEBIAN_FRONTEND=noninteractive apt-get install -y python3 &&\
#     apt-get install -y pip &&\
#     ln -sf /usr/bin/python3.8 /usr/bin/python &&\
#     rm -rf /var/lib/apt/lists/*

# INSTALL DIFFERENT VERSION OF PYTHON (change 3.10 to the version you want)
# RUN apt-get update &&\
#    DEBIAN_FRONTEND=noninteractive apt-get install software-properties-common -y &&\
#    add-apt-repository -y ppa:deadsnakes/ppa &&\
#     apt-get install -y python3.10  &&\
#     ln -sf /usr/bin/python3.10 /usr/bin/python &&\
#     ln -sf /usr/bin/python3.10 /usr/bin/python3 &&\
#     apt-get install -y curl &&\
#     curl -sS https://bootstrap.pypa.io/get-pip.py | python &&\
#     rm -rf /var/lib/apt/lists/*

# ##############################################################################
# PYTHON DEPENDENCIES
# ##############################################################################
# INSTALL PYTORCH (with specific version known to work with cuda driver 11.2)
# RUN python -m pip install --no-cache-dir \
#     torch==1.12.1 \
#     torchaudio==0.12.1 \
#     torchvision==0.13.1 \
#     --extra-index-url https://download.pytorch.org/whl/cu112

# INSTALL TENSORFLOW (with specific version known to work with cuda driver 11.2)
# RUN python -m pip install tensorflow==2.9.1

# ADITIONAL PYTHON DEPENDENCIES
# COPY requirements.txt ./
# RUN python -m pip install --no-cache-dir -r requirements.txt


# ##############################################################################
# UNIQUE SETUP CODE HERE
# ##############################################################################
WORKDIR /app

# COPY WHATEVER OTHER SCRIPTS YOU MAY NEED
# COPY file1 file2 file3 destination_dir
COPY ./ ./

# RUN WHATEVER OTHER COMMANDS YOU MAY NEED TO SET UP THE SYSTEM
# RUN mycommand1 &&\
#     mycommand2 &&\
#     mycommand3
RUN python -m pip install --no-cache-dir .

# SPECIFY THE ENTRYPOINT SCRIPT
CMD python -m YYY
# CMD bash
