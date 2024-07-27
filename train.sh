# python yolov9/train.py \
# --batch 16 --epochs 20 --img 640 --device 0 --min-items 0 --close-mosaic 15 \
# --data /home/Hosting/workspace/X-ray_multi_object-1/data.yaml \
# --weights /home/Hosting/workspace/Model/weights/gelan-c.pt \
# --cfg /home/Hosting/workspace/yolov9/models/detect/gelan-c.yaml \
# --hyp /home/Hosting/workspace/hyp.scratch-high.yaml

python yolov9/train.py \
--batch 16 --epochs 20 --img 640 --device 0 --min-items 0 --close-mosaic 15 \
--data /home/Hosting/workspace/X-ray_multi_object-1/data.yaml \
--weights /home/Hosting/workspace/Model/weights/gelan-c.pt \
--cfg /home/Hosting/workspace/yolov9/models/detect/gelan-c.yaml
