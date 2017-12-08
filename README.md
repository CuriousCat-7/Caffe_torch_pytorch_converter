# Caffe_torch_pytorch_converter
This is to convert caffe model to torch model and torch model to pytorch model

This project is inspired by https://github.com/fanq15/caffe_to_torch_to_pytorch

Which has not been update for 6 month.

The project above is a combination of:
- https://github.com/szagoruyko/loadcaffe
- https://github.com/clcarwin/convert_torch_to_pytorch
I personally encourage you to use the original projects' code to sovle your problem, cause I am not an expert.

## Install torch
http://torch.ch/
## Install loadcaffe
https://github.com/szagoruyko/loadcaffe

Don't forget to try ```require 'loadcaffe'``` in ```th``` first.
If fail, try ```sudo $(which luarocks) install loadcaffe``` to fix it.
## Convert to torch
```bash
th caffemodel_to_t7.lua <path/to/your/model/modelname.prototxt> <path/to/your/model/modelname.caffemodel> <path/to/your/target/name>
```
or
```bash
th caffemodel_to_t7.lua <path/to/your/model/modelname.prototxt> <path/to/your/model/modelname.caffemodel> <path/to/your/target/name> ccn2
```
The second use ccn2, which will make the next step fail, but it will be better if you just use this project to get torch model.

Your will get name.t7 and name.prototxt.t7
## Convet to pytorch 
```bash
python convert_torch.py -m name.t7
```
Two file will be created name.py and name.pth

To use this model,example:
```python
import name

model = name.name
model.load_state_dict(torch.load('name.pth'))
model.eval()
print model
```
