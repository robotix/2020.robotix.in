---
layout: post
title: "Image Enhancement"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/enhance/"
---

#### Introduction

Image Enhancement is generally used to remove unnecessary details from the image before performing operations like edge, blob or shape detection. Image enhancement helps to just keep that information which is required for obtaining the best results from those operations.

 

#### Intensity Transformation

Function imadjust  is the basic IPT tool for intensity transformations of grayscale images. It has the syntax

This function maps the intensity values in f between low_in and high_in to image g between low_out and high_out.  Values outside of low_in and high_in are clipped i.e values below low_in are made low_out and values above high_in are made high_out. Using the empty matrix [ ] uses the default values [0 1].

Parameter gamma specifies the shape of the curve that maps the intensity values in f to create g.If gamma < 1,the mapping is weighted toward higher (brighter) output values. If gamma > 1, the mapping is weighted toward lower (darker) output values. If it is omitted from the function argument, gamma defaults to 1 (linear mapping).

For example

![][1]{:.img-responsive}

Original Image

![][2]{:.img-responsive}

Intensity Enhanced

  
The improfile function calculates and plots the intensity values along a line segment or a multiline path in an image. You can supply the coordinates of the line segments as input arguments, or you can define the desired path using a mouse. In either case,improfile uses interpolation to determine the values of equally spaced points along the path. (By default, improfile uses nearest neighbor interpolation, but you can specify a different method. See Chapter 3, "Geometric Operations" for a discussion of interpolation.)

improfile works best with intensity and RGB images. (For indexed images, it displays the index values from the image matrix, not the intensity values from the colormap.) For a single line segment, improfile plots the intensity values in a two-dimensional view. For a multiline path, improfile plots the intensity values in a three-dimensional view.

If you call improfile with no arguments, the cursor changes to a cross hair when it is over the image. You can then specify line segments by clicking on the endpoints, improfile draws a line between each two consecutive points you select. When you finish specifying the path, press Return. improfile displays the plot in a new figure. In this example, you call improfile and specify a single line with the mouse. The line is shown in red, and is drawn from left to right.

![][3]{:.img-responsive}![][4]{:.img-responsive}

improfile displays a plot of the data along the line. Notice the peaks and valleys and how they correspond to the light and dark bands in the image. The example below shows how improfile works with an RGB image. The red line is drawn from top to bottom.

 

![][5]{:.img-responsive}

![][6]{:.img-responsive}  
improfile displays a plot with separate lines for the red, green, and blue intensities. Notice how the lines correspond to the colors in the image.

#### Image Contours

You can use the toolbox function imcontour to display a contour plot of the data  
in an intensity image.

![][7]{:.img-responsive}

Original Image

![][8]{:.img-responsive}

Result

 

#### Negative of an Image

This command is equivalent to the process of obtaining a photographic negative. It can also be obtained by

![][9]{:.img-responsive}

Negative of the same Image used earlier

[1]:/img/tutorial/img_processing/enhance/pic1.png 
[2]: /img/tutorial/img_processing/enhance/pic2.png
[3]: /img/tutorial/img_processing/enhance/pic3.png
[4]: /img/tutorial/img_processing/enhance/pic4.png
[5]: /img/tutorial/img_processing/enhance/pic5.png
[6]: /img/tutorial/img_processing/enhance/pic6.png
[7]: /img/tutorial/img_processing/enhance/pic7.png
[8]: /img/tutorial/img_processing/enhance/pic8.png
[9]: /img/tutorial/img_processing/enhance/pic9.png
