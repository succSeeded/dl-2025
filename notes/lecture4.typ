#set page(
  paper: "a4",
  numbering: "1",
)

#set text(
  size: 14pt,
)

#set par(
  justify: true,
)

#set enum(numbering: "1.")

= Residual Networks

== Recap

Earlier people used datasets like ImageNet which have a lot of fine-grained classes and entries in general. 

Example from the previous lecture: instead of doing (...) google decided to include auxilary classifiers to use in case gradients are 0 on some layer (since otherwise nothing will be backpropagated).

Residual layers: convolutions make images smaller, pooling do that too. Convolution can be adjusted so that the reduction in size will be zeroed out by adding padding.

Let us try to classify some images, but on a dataset with just 5K entries. In order to do this, we can either:

- Finetune existing big network;

- Augment the dataset by doctoring the images;

- Use external data (?)

How to select features to eep in the model that is being finetuned: the rule of thumb is more similar its training set is to yours the more parameters you retain.

Say your model is trained on cifar -- a small dataset. Then you take out the last(?) layer and use the outputs of the remaining model is inputs of another model. For example: linreg, tree model, knn(in case you do not have enough data points). If you have a big enough traning set you can strap on another NN instead. Then you freeze the weights in the other model and start training the new NN. Then you gradually unfreeze the weights in old model and go on wiht your life.

What if you do not have any labeled dataset? Then you can try to train the model on another task that may be helpful with you initial one. For example, you can remove parts of images and make the model predict what is in them. Also you can take your images, take (and doctor) parts of them and make the model classify if those are parts of the same image or not. There are also some tricks for the lest example, look at presentation

== Semantic segregation

You should train the model to try to tell if a spot has or does not have an object. Your model has to make predictions of the same size as the image itself.

In order to "undo" pooling one can use upscaling/upsampling/unpooling.

Using that you can make a network that has convolutional and deconvolutional parts. By connecting the layers with similar sizes that are on the opposite sides of the network we can get a U-net. U-nets can be used to generate images or color in black-and-white images.  

