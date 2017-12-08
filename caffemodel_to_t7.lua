require 'loadcaffe'
require 'xlua'
require 'optim'

-- modify the path 

prototxt = arg[1]
binary =  arg[2]
name = arg[3] ..'.t7'
style = 'nn'
if arg[4]
  then style = arg[4]
end

net = loadcaffe.load(prototxt, binary, style)
net = net:float() -- essential reference https://github.com/clcarwin/convert_torch_to_pytorch/issues/8
print(net)

torch.save(name, net)




