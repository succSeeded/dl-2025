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

= Convolutional NNs

Today we mostly talk about CV. Let us assume that images are 256x256 matrices divied in several channels.

We will start from the stimplest problem --- image classification.

== Convolution

Convolution --- a linear layer that "walks" over the whole image using matrix multiplication. Examples: edge detection kernel $mat(-1, -1, -1; -1, 8, -1; -1, -1, -1)$. Generally convolution requires a relu after it since it does not contain any non-linearities.

Convolution output: $H - F_H + 1$, where $F_H$ --- size of convolution kernel, $H$ --- input size

== Pooling

Take a square (matrix, not power of 2) of adjecent values and take the aggregate of those. This makes the image smaller and does not have any weights.

Pooling output: $H / P_H$, where $P_H$ is pooling aggregetion range.

== Example

$
"100x100 RGB image (100x100x3)" ->_"5x5 convolution" "3x96x96" ->_"3x3 pooling" \
->_"3x3 Pooling" "3x32x32" ->_"5x5 convolution" "3x28x28" ->_"3x3 pooling" "3x9x9" ->_"243x512" \
"512 fully connected" ->_"512x512" "512 fully connected" ->_"512x4" "4 outputs" $

(look up in presentation)

== Residual networks

== Loss surfaces
