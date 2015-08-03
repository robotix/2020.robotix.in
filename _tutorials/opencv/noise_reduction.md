---
layout: post
title: "Noise Reduction"
categories:
  - opencv
redirect_from: "/tutorials/category/opencv/noise_reduction/"
---

#### Video Tutorial

#### Introduction

**Noise in digital images is used to refer to random fluctuations in brightness, colour and intensity that usually make it more difficult to process the image properly. It basically adds irrelevant and unwanted information to the image, and so we should reduce that before proceeding onwards. An example of a noisy image is shown here:  
![][1]**

There are techniques that can handle the reduction of noise in images, and that is what we shall discuss here. There is always a fair amount of approximation involved in noise reduction, but it is worth the potential loss of some needed information, to be able to get rid of a lot of unnecessary information.

#### Erosion and Dilation

**CONCEPT  
Erosion and dilation are basic examples of what is known as morphological transformations on an image. They involve taking kernels, which are small units (generally 3X3) of the image, one at a time, and either removing that kernel from the image altogether or adding it completely to the image.  
In general, dilation expands the region as it ten**ds to fill out small intrusions, while erosion reduces the image by getting rid of small extrusions. Which of the two operations is carried out on the kernel will depend on whether that kernel is more of a cavity or a small outward extrusion. It should also be noted that is not necessary to have a 3X3 kernel, but is the generally accepted practice.

**This kind of noise reduction is usually done on binary images, where, say, white represents the wanted information and black the unwanted information. Now, we consider each kernel of the image and scan the pixels of it. If the majority of the pixels in the kernel are white, then the kernel is made white, which amounts to dilation or expanding the image and vice versa. So basically the value of the entire kernel in the resultant image is uniform. As can be seen, this reduces the accuracy of the image but it makes processing the image much easier and makes it smoother also. The picture below can give a good idea about this:**

**![Erosion][2]**

**Erosion**

**![Dilation][3]**

**Dilation**

**Given below is an image taken from an edge detection program that has considerable amount of noise. Over the rest of this tutorial we will compare it to pictures that have had the noise-reduction techniques applied on them**

**![][4]**

PROGRAM  
The function below uses a simple erosion-dilation technique on a binary image and returns the noise-reduced image  
__  
The image with noise was shown at the beginning. Here is the result of applying the above kind of noise reduction on it:  
![][5]  
UNDERSTANDING THE CODE  
Other than the standard variables, we have two to count the white and black pixels in each kernel, and another to denote the value the entire kernel will have. Then we cycle through the entire image, but this time not pixel-by-pixel but rather kernel-by-kernel. That is why we have the loop control variables i and j incremented by 'block' each time and not by 1.  
In each kernel, there is another nested 'for' loop that goes through each pixel of the kernel, checking each value. If a greater number of pixels are black than they are white (or for a kernel of even pixels, if the same number is black), then the entire kernel is made black, and in the other case, white.  
Finally the result is returned. __

EXISTING METHOD  
CvErode and CvDilate  
There are functions in OpenCV that are capable of performing erosion and dilation to reduce noise in images. They are aptly named CvErode and CvDilate. They operate on kernels on a particular size for the image, and are executed single or multiple times. The speckles are eroded to nothing while larger, connected regions of the image are unaffected.  
It is better to first use the CvErode function and then the CvDilate one. (These functions can also be used on intensity images and not just binary ones. In that case the minimum intensity value in the kernel is used to fill the kernel for erosion, and the maximum for dilation)

SAMPLE PROGRAM  
The result of this smoothing on the first image is shown below+block;n++){+block;m++){+block;n++){+block;m++){;j+=block){;i+=block){

**![][6]**

**UNDERSTANDING THE CODE  
Most of the program is self-explanatory, from loading the video file to capturing each frame one at a time. Inside the loop, the image of the frame is made grayscale and the edge detection method returns a binary image. Then we use the CvErode and the CvDilate function. The first parameter is the source and the second the destination, but one can give the same variable for both while calling the function, so the changes are saved in the original one only. This is called an "in-place" operation. These two functions support "in-place" operations for certain types of images.  
The next parameter is the type of kernel used for erosion. We specify NULL here to have a 3X3 kernel. Finally, we send the number of iterations we want to apply of the method.**

#### Smoothing

**SMOOTHING**

CONCEPT  
Smoothing, also known as blurring, is an important means of reducing noise in an image. It attempts to look for important patterns in the image data while leaving out the small fluctuations and disturbances. Smoothing also reduces the image resolution in a systematic manner. The pictures below are an example:

For the purpose of smoothing, there exists a well-defined function in OpenCV called CvSmooth(). This function is quite versatile and has up to seven parameters. The first two parameters, src and dst, are the source and destination images respectively. The next parameter, smoothtype is the type of smoothing that the function will execute. The details of it are shown in the table below. Then we have param1 and param2, which usually represent the dimensions of the kernel. The last 2 parameters - param3 and param4 \- are not important for our purposes, and we will assign them 0.  
(Note – In the table, Nc refers to the number of channels the src and dst images can have.

**For our tutorial, we will use the CV_GAUSSIAN macro as it is generally the most convenient one. Smoothing is particularly important for certain edge detection methods.**

  
**PROGRAM  
The program below gives an instance of usage of the CvSmooth function**

**It uses the edge detection function as illustrated in the [edge detection tutorial][7]  
Below is shown the effect of this smoothing. It is easily the most improved one  
![][8]**

UNDERSTANDING THE CODE  
The code is very simple here and exactly like the example with CvErode and CvDilate, only that the line where the smoothing takes place is changed. We use the CvSmooth function with the necessary parameters. As the table shows, usage of CV_GAUSSIAN allows for "in-place" calls so that the source image and the destination image parameters have the same variable.

[1]: https://lh5.googleusercontent.com/Yqtp2Br9H1V50kFR1qhmUWhy0mZ63nFLApuEIfmJ6xOXntXtPrEpYwRyHp3uZVr3OkNpXJMhYSPv2Q9fT0XNJjaid5GBfSC6SD8Auk8Zm9qsfw0aMro
[2]: http://www.cs.auckland.ac.nz/courses/compsci773s1c/lectures/ImageProcessing-html/mor-pri-erosion.gif
[3]: http://www.cs.auckland.ac.nz/courses/compsci773s1c/lectures/ImageProcessing-html/mor-pri-dilation.gif
[4]: https://lh4.googleusercontent.com/6_OdGkz6Ya2gx1sqgFNehUQkiFIob0X1WS3E5_inqcImar9bBWprXhmH_8lq-xLUpnIRbGV8gXvevdbbFTVTKiTjtDQDhp9-LFT7eqVLeYlwpa1S9uY
[5]: https://lh4.googleusercontent.com/xHSDWzNCohs_7w4jWUtkCmGSOL0S3mAEO6hLHQ9nRwguXK8ce4dBz3v0a_EKKpswp6Y-tHleXV8yT2D4J32DDeFbMDb9rVpURAEKnbio8znt-G1gHv4
[6]: https://lh6.googleusercontent.com/VOBV5MEMjkVZ3gzUOz2mRS2hM6FxMDU0ctcmd5wJ0BMSxIfhio8j44hGp3yDL6l_XUgR055jAlkleqEo-SGCgCe7WlmVW01VMNCdiWC8st6i1oSk9Kg
[7]: http://robotix.in/tutorials/category/opencv/edge_detection
[8]: https://lh4.googleusercontent.com/Ab_b9s0c72cy94JOdansk3ut9TS7-xXsWKLpk8tq3i-xHkgWzksP_7xmf8Gk2uLh8Gnk5CfGHsTJ9GqTsH7M95TDcY66b3yPqY_kqWP9lEUpkUD9HXE
