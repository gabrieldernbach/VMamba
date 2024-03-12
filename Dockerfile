FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-devel

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
COPY kernels/selective_scan tmp/
RUN cd tmp/kernels/selective_scan && pip install .
