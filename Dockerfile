FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

RUN apt update && apt install -y wget unzip

RUN wget --no-verbose https://download.pytorch.org/libtorch/cu118/libtorch-cxx11-abi-shared-with-deps-2.0.1%2Bcu118.zip && \
    unzip 'libtorch-cxx11-abi-shared-with-deps-2.0.1+cu118.zip' -d /opt && \
    rm 'libtorch-cxx11-abi-shared-with-deps-2.0.1+cu118.zip'

ENV LIBTORCH=/opt/libtorch
ENV LD_LIBRARY_PATH=/opt/libtorch/lib:$LD_LIBRARY_PATH
