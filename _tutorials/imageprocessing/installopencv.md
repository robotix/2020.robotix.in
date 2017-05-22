---
layout: post
title: "Introduction and Integration"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/installopencv/"
---

#### Introduction

Image processing is basically the application of signal processing techniques to images or video frames, which are received as inputs, so as to produce desired outputs like new images or parameters relevant to the image. Image processing is used around the world in numerous ways, and in this set of tutorials we will cover some of the basic, fundamental concepts that allow such utilization.

#### What is an Image

An Image is defined in the real world as a 2-dimensional light intensity function f(x, y) where x and y represent the Cartesian coordinates and the value of f at any point (x, y) depends on the brightness or gray levels of the image at that point. Here, we will be considering digital image processing only, wherein the function f(x, y) has been made discrete both in terms of coordinates and brightness. Keeping that in mind, an image is essentially a 2-dimensional array of pixels, or picture elements, arranged in columns and rows, which combine to form what we see on the screen.

#### Basic Concepts

Here are some basic concepts associated with images:

**Pixel** – A pixel, short for picture element, is the smallest independent unit of an image. The image is basically defined by a particular combination of pixels. The two characteristics of each pixel are its position and the value that pixel stores which is the brightness. The brightness is stored as an unsigned integer between 0 and 255. There is provision for colours also, when in multi-channel images, each pixel stores multiple values. We shall see that shortly. To sum up, the image basically contains the information about each pixel, which is what we access and manipulate to process them. The image below explains this.

![][1]{:.img-responsive}

**Resolution **– The resolution refers to the number of pixels comprising the image. For example, if an image has a resolution [350 X 233], then that means there are 350 pixels in the horizontal direction and 233 in the vertical direction (as shown in the figure below)

![][2]{:.img-responsive}

Simply put, the greater the resolution the more information is stored in the image and more is the memory space required by the image. The image below shows different resolutions scaled to the same size.

![][3]{:.img-responsive}

**Channels** – Channels refer to the number of values that each pixel contains. If there is only one channel then the pixel will contain only one value which represents that pixel. This is the case in black and white images and also in gray-scale images, where each pixel stores a single value between 0 and 255. In coloured images, there are multiple channels and the combination of values in each channel creates a colour which we see on screen.

  
**Gray-scale** – This is a single-channel type of image wherein each pixel contains only the intensity, as a numerical value between 0 and 255. Images of this type, which we know more commonly as black-and-white images, are composed exclusively of different shades of gray, varying from complete black (at 0) to complete white (at 255). The greater the value of the pixel, the brighter it is.

![][4]{:.img-responsive}

**Binary Image** – This refers to a digital image that has only two values for each pixel. Most commonly we choose 0 and 255 or complete black and complete white. This type of image is used typically to ignore unwanted areas in an image and focus only on the relevant portions.

![][5]{:.img-responsive}

**Colours** – Digital images can have colours through the existence of multiple channels. In this case, the value of each channel defines a particular aspect of the colour, and the combination of the values gives rise to a specific colour. Two of the most commonly used multi-channel formats for representing colours are BGR and HSV. BGR or Blue-Green-Red is a 3-channel format where each channel stores the intensity of the colours blue, green and red respectively. As we know, these are the 3 fundamental colours and combinations of them in various shades can form any colour. HSV refers to Hue-Saturation-Value, another 3-channel way of representing images. The Hue refers to a particular shade of colour, saturation to the intensity of the colour and value to brightness.

![][6]{:.img-responsive}

#### Understanding IP

We have seen above how an image is represented and stored in memory and what the basic terminologies associated with images are. Essentially, Image Processing involved acquiring of the information associated with the digital image, altering it in a manner to suit our needs, obtaining certain parameters based on the image itself, recognize certain aspects or features in the image, and either utilizing all the information acquired elsewhere, or producing a different image with particular characteristics as output, or both. This is done through computer programming in various languages, and with the help of certain defined libraries of code. We will use the language C++ for this set of tutorials, as well as the image processing library OpenCV. Alternatively, you can use the software MATLAB for image processing. Tutorials for the same will be uploaded soon).We will write programs that take images as input and manipulate them to meet the desired ends, and in the process learn about certain basic techniques associated with digital image processing.

#### What is OpenCV?

OpenCV is an open source computer vision library developed in C and C++. It is optimized and intended for real-time applications. It is independent of platforms and hardware, allows for generic loading, saving and acquisition of images and videos, and provides both low and high level APIs (Application Programming Interfaces). It has a host of useful features and functions which make it very popular in the world of image processing, and it is what we shall use throughout this tutorial.

#### Usage of OpenCV

For OpenCV to be used, it must first be associated with our IDE (Integrated Development Environment) which we shall utilize for writing our image processing programs, which in this case will be Microsoft's Visual Studio, which is a very powerful and versatile tool for programming in multiple languages. The steps outlined here are identical in the free Visual C++ Express Edition.

The steps to integrate OpenCV 2.4.6 with Visual Studio 2010/2012 are:-

1.      Install Microsoft Visual Studio  
2.      Download the OpenCV 2.4.6 package from http://sourceforge.net/projects/opencvlibrary/files/opencv-win/2.4.6/  
3.      Extract the file to C: such that all OpenCV files are now in C:opencv  
4.      Open a new project (Win32 Console Application) in Visual Studio and give it a name.  
5.      Go to Project -> Properties (the last option)  
6.      Choose "All Configurations" in the drop-down menu  
7.      On the left, under Configuration Properties, click Debugging -> Environment and copy paste:

PATH=C:opencvbuildx86vc10bin;C:opencvbuildcommontbbia32vc10  (x64 for 64 bit, vcxx where xx is 1 less than the visual studio version installed, eg. vc10 for vs11)

8.      Click on VC++ Directories -> Include directories and add the entries:

C:opencvbuildcommontbbia32vc10;C:opencvbuildinclude;C:opencvbuildincludeopencv;C:opencvbuildincludeopencv2 (x64 for 64 bit, vcxx where xx is 1 less than the visual studio version installed, eg. vc10 for vs11)

9.       Click VC++ Directories -> Library directories and add the entries:

C:opencvbuildx86vc10lib  (x64 for 64 bit, vcxx where xx is 1 less than the visual studio version installed, eg. vc10 for vs11)

9.       Click Linker -> Input -> Additional Dependencies and add the following: (don't replace)

opencv_calib3d246.lib;opencv_contrib246.lib;opencv_core246.lib;opencv_features2d246.lib;opencv_flann246.lib;

opencv_gpu246.lib;opencv_haartraining_engine.lib;opencv_nonfree246.lib;opencv_highgui246.lib;opencv_imgproc246.lib;

opencv_legacy246.lib;opencv_ml246.lib;opencv_objdetect246.lib;opencv_ts246.lib;opencv_video246.lib;

(Note that you'll need to rename the OpenCV files of format opencv_file246.lib etc to opencv_file246.lib for OpenCV 2.4.6 and so on.)

10.   Test your OpenCV installation with the following code. Include the given header files for all your OpenCV projects.

<script src="https://gist.github.com/abhinavjain241/87d2a41a4277a098dc9f.js"></script>

[1]:/img/tutorial/img_processing/ins_opencv/pic1.JPG 
[2]:/img/tutorial/img_processing/ins_opencv/pic2.JPG 
[3]:/img/tutorial/img_processing/ins_opencv/pic3.JPG 
[4]:/img/tutorial/img_processing/ins_opencv/pic4.JPG 
[5]:/img/tutorial/img_processing/ins_opencv/pic5.JPG 
[6]:/img/tutorial/img_processing/ins_opencv/pic6.JPG 
