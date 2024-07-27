from roboflow import Roboflow

rf = Roboflow(api_key="EgmmKLurycjPrLH5DApA")
project = rf.workspace("mireulab").project("x-ray_multi_object")

version = project.version(1)
dataset = version.download("yolov9")

print(dataset.location)