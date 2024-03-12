# braindead vmamba training

## setup
bring your data
```
train/dog/xxx.png
train/cat/xxy.png
train/fish/[...]/xxz.png

val/dog/123.png
val/cat/nsdf3.png
val/fish/[...]/asd932_.png

test/dog/123.png
test/cat/nsdf3.png
test/fish/[...]/asd932_.png
```

get the code
```
git clone https://github.com/gabrieldernbach/VMamba
mv my_dataset ./VMamba/dataset
cd VMamba && docker build . -t mamba
```
## train
```
# requires 24G VRAM, modify run.sh if you happen to have more than 1 gpu
docker run -v `pwd`:`pwd` -w `pwd` --gpus all --ipc=host  -it vmamba /bin/bash run.sh
```
