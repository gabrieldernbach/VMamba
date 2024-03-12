# braindead vmamba training

## setup
```
# if uncertain about your dataset format, check our dummy `generate_classification_data.py`
git clone https://github.com/gabrieldernbach/VMamba
mv image_folder_dataset ./VMamba/dataset && cd VMamba 
docker build . -t mamba
```
## train
```
# requires 24G VRAM, modify run.sh if you happen to have more than 1 gpu
docker run -v `pwd`:`pwd` -w `pwd` --gpus all --ipc=host  -it vmamba /bin/bash run.sh
```
