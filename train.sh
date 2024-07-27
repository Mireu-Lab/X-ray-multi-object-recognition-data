#!/bin/bash

python3 yolov9/train.py \
--batch 16 --epochs 20 --img 640 --min-items 0 --close-mosaic 15 \
--data $(pwd)/X-ray_multi_object-1/data.yaml \
--weights $(pwd)/Model/weights/gelan-c.pt \
--cfg $(pwd)/yolov9/models/detect/gelan-c.yaml \
--hyp $(pwd)/Model/hyp/hyp.scratch-high.yaml \
--device 0
