# NVIDIA CUDA image as a base
# We also mark this image as "jupyter-base" so we could use it by name
FROM nvidia/cuda:11.1-runtime AS jupyter-base

WORKDIR /
# Install Python and its tools
RUN apt update && apt install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools
RUN pip3 -q install pip --upgrade
# Install all basic packages
RUN pip3 install \
    # Jupyter itself
    jupyter \
    # Numpy and Pandas are required a-priori
    numpy pandas \
    # PyTorch with CUDA 10.2 support
    torch

# Here we use a base image by its name - "jupyter-base"
FROM jupyter-base
# Install additional packages
RUN pip3 install \
    # Hugging Face Transformers
    transformers \
    # Hugging Face Tokenizers
    tokenizers \
    # Hugging Face Datasets
    datasets \
    # Progress bar to track experiments
    barbar