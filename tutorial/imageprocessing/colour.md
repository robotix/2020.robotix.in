# Tutorials

#### Colour Detection

The concept of colour detection is, as the name suggests, a part of image processing that involves differentiation between objects based on their colour. For example if we are processing an image with a number of coloured objects, and we want to process only the ones of a particular colour, then colour detection methods basically return a binary image where only the portions with relevant colour are white, while the rest is black. This reduces the information of the image to only the relevant portions, which make it easier to process for various operations.

There is no predefined function for colour detection in MATLAB.

As we had discussed before, any image in Red-Blue-Green format has each pixel in it possessing a set of values for each of the 3 channels. If we know the range of R-B-G values for a particular colour we want to detect, then while processing the image, we will look only for those pixels which have R-B-G values in the range of what we want.  
In the next program we will discuss a very simple method for detecting one of the 3 basic colours – red, green or blue. We will check for each pixel whether the value of a certain channel (the higher the value the more the colour is present) is higher than a particular threshold value, and also that the values of the other two channels are LESS than a particular threshold value. If the pixel meets that condition, it is deemed to be of that the basic colour, and we designate it white in the resultant image. Otherwise the pixel is kept black.

The following program detects the colour red:

![][1]![][2]

[1]: https://lh6.googleusercontent.com/l3melGCs_r41-5jOIgM2DhTlvinv3wNmPlzJR30kPjpMw1RAaxGyDgX0TVyl6n36KWVfJkcmpmd5Ste5Za_mAS7IDzNMHlpnkgc5OZFghygGHvBAz6N-yG1p
[2]: https://lh6.googleusercontent.com/TDSh7v-6ouDbR4dnyjkR923Z0aV48S9LXFNzvkgUAyCSPswLhiQP0ZNVMfFgz9IkaLhmFTlM6iWR_PXOnpAFMbBMVP0BkbFdj9hl_TY1HOEKguKSQXgrnjm0
