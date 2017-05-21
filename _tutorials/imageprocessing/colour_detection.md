---
layout: post
title: "Colour Detection"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/colour_detection/"
---

#### Introduction

The concept of colour detection is, as the name suggests, a part of image processing that involves differentiation between objects based on their colour. For example if we are processing an image with a number of coloured objects, and we want to process only the ones of a particular colour, then colour detection methods basically return a binary image where only the portions with relevant colour are white, while the rest is black. This reduces the information of the image to only the relevant portions, which make it easier to process for various operations. There are multiple ways in which to carry out colour detection.

#### Colour Detecting in BGR

**CONCEPT**

As we had discussed before, any image in Red-Blue-Green format has each pixel in it possessing a set of values for each of the 3 channels. If we know the range of R-B-G values for a particular colour we want to detect, then while processing the image, we will look only for those pixels which have R-B-G values in the range of what we want.  
In the next program we will discuss a very simple method for detecting one of the 3 basic colours – red, green or blue. We will check for each pixel whether the value of a certain channel (the higher the value the more the colour is present) is higher than a particular threshold value, and also that the values of the other two channels are LESS than a particular threshold value. If the pixel meets that condition, it is deemed to be of that the basic colour, and we designate it white in the resultant image. Otherwise the pixel is kept black.

**PROGRAM**

The function below detects the red-coloured portions of the loaded image and marks those portions white in the resultant image

<script src="https://gist.github.com/anonymous/bf9aa69a3318d0abb958.js"></script>

**UNDERSTANDING THE CODE**

There are two more parameters to the above function. These are the two thresholds we had discussed before. One is the minimum value which the channel we are interested in, should be greater than, and the other is the maximum value that the other two channels should be less than. Inside the function, after declaring the variables, we cycle through each image pixel-by-pixel. We then check the value of each channel of the pixel. Since in this case we are looking for the red coloured pixels, we check that the value of the red channel (channel number 2) is more than the minimum threshold `min_thresh`, and that the values of the blue and green channels (channels 0 and 1 respectively) are less than the maximum threshold `max_thresh`.

If the pixel satisfies that condition, then it is designated white by being given the value 255, or otherwise black by being given the value 0. Finally the resultant image is returned.  
**N.B:-** The program that utilizes this function is very simple, largely similar to how we used the edge detection function in an edge detection program. It defines the various variables, loads the image, utilizes the colour detection function and displays the image. We will see a general method of utilizing a colour detection function, for both image and video processing, later on.  
In the example we will show you, the threshold values found to be reasonably decent, are 130 for `min_thresh` and 63 for `max_thresh`.

#### Colour Detecting in HSV

**CONCEPT**

We had introduced the colour format HSV (Hue-Saturation-Value) prior to this. It should be noted that this format is far more popular for colour detection because of its greater use in varying light conditions. In the HSV image, each colour has a particular hue assigned to it, along with a saturation which refers to its intensity, and a value which is its brightness.  
To detect a particular colour, we should know the H-S-V values of it. Thereafter, we will give some tolerance to each of these values while checking for pixels.  
What does tolerance mean? Well, if the hue value is say, X, and the tolerance is T, then we will allow values between (W-T) and (W+T).  
We will allow pixels which have a hue value in a small range around that value. Thus the tolerance for the hue value will be small. The tolerance for saturation is kept a little higher, to allow for different shades of the colour of varying intensity. Finally, to account for varied lighting conditions which affect the brightness of the colour, we keep an even larger tolerance for the value. A decent set of tolerances are 5, 100 and 150 for hue, saturation and value respectively.

**PROGRAM**

The function below detects colours using the HSV system, assuming a set of HSV values for one such pixel is known

<script src="https://gist.github.com/anonymous/3913832.js"></script>

**UNDERSTANDING THE CODE**

For this particular function, the parameters are the image to be operated on, in RBG format, and the set of HSV values for the type of colour we are looking for. Inside the function, we create the HSV version of the RGB image, using the predefined function `cvCvtColor`, as we have seen before. The second parameter for this function is the macro CV_BGR2HSV, which directs it to return an HSV image. We then cycle through each pixel of the HSV image, and check to see that the values of its various channels are within the specified ranges. If that is the case, then we demarcate that pixel as white in the resultant image, or else we make it black.
