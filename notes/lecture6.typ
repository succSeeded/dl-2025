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

= Natural language processing

...

== Text representation

In classical models categorical featrues usually use one-hot encoding, but this is bad in NLP, since every single element is equidistant, yet some words can substitute each other in real use making it hard to work with euphemisms.

The easiest way to make features that describe a text is assigning a random vector to each word in a set of words and then learning them. We also need to decide on a loss function that we will be using.

We can encode text using words' context. By assigning a word a vector of cooccurances we can assume that the words are similar if their vectors are similar.

But this approach is flawed since antonyms can occur in really similar contexts but have opposite meanings.

=== Word2Vec

Optimize logloss of probabilities of a word _x_ being in context of word _y_.


== RNNs

You may look up LSTM and GRU in order to get a good idea of them. The general idea of those networks is to use the previous state of the model to make predictions.
