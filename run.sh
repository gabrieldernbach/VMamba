python -m torch.distributed.launch \
        --nnodes=1 --node_rank=0 \
        --nproc_per_node=1 \
        --master_addr="127.0.0.1" \
        --master_port=29501 \
        classification/main.py --cfg classification/configs/vssm1/vssm_tiny_224_0229.yaml \
                --batch-size 128 \
                --data-path dataset \
                --output results
