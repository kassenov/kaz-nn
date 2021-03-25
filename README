The docker-compose version that I have used is 1.28.0, as I had complications using my video card in Ubuntu.

Before doing anything you have to make augmentations. I have added the original images.

1. *Augmentations Creator* notebook creates the augmentations.
2. *Sat-CNN* notebook contains the model and training.

Note that there are two models in there:
- CNN (pre-trained on the ImageNet dataset - ResNet18) + RNN
- Three-dimensional convolutional neural network (3D-CNN) - Spatio-temporal Convolutions for Action Recognition (https://arxiv.org/pdf/1711.11248.pdf)

To switch between them uncomment one of them and comment another one:

- model_type = "3dcnn"
- model_type = "rnn"

Another note that FieldsDataset has two params, *seq_length* for number of images per sequence and *step* for gap between next sequence.