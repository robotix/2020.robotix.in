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

![][1]

Original Image

![][2]

Intensity Enhanced

  
The improfile function calculates and plots the intensity values along a line segment or a multiline path in an image. You can supply the coordinates of the line segments as input arguments, or you can define the desired path using a mouse. In either case,improfile uses interpolation to determine the values of equally spaced points along the path. (By default, improfile uses nearest neighbor interpolation, but you can specify a different method. See Chapter 3, "Geometric Operations" for a discussion of interpolation.)

improfile works best with intensity and RGB images. (For indexed images, it displays the index values from the image matrix, not the intensity values from the colormap.) For a single line segment, improfile plots the intensity values in a two-dimensional view. For a multiline path, improfile plots the intensity values in a three-dimensional view.

If you call improfile with no arguments, the cursor changes to a cross hair when it is over the image. You can then specify line segments by clicking on the endpoints, improfile draws a line between each two consecutive points you select. When you finish specifying the path, press Return. improfile displays the plot in a new figure. In this example, you call improfile and specify a single line with the mouse. The line is shown in red, and is drawn from left to right.

![][3]![][4]

improfile displays a plot of the data along the line. Notice the peaks and valleys and how they correspond to the light and dark bands in the image. The example below shows how improfile works with an RGB image. The red line is drawn from top to bottom.

 

![][5]

![][6]  
improfile displays a plot with separate lines for the red, green, and blue intensities. Notice how the lines correspond to the colors in the image.

#### Image Contours

You can use the toolbox function imcontour to display a contour plot of the data  
in an intensity image.

![][7]

Original Image

![][8]

Result

 

#### Negative of an Image

This command is equivalent to the process of obtaining a photographic negative. It can also be obtained by

![][9]

Negative of the same Image used earlier

[1]: https://lh3.googleusercontent.com/lQ73sEv68rHAJHblrnFYtUu7-ESPJXoKtfgAHS0Cb-BYyNR3nM8zPBrtCn92D6q8bFdkYdB5kVY2oV4Nt1f6Rpjo_dOmY2_x48N7wjFTSh7gWvcDSDUgFfn-
[2]: https://lh4.googleusercontent.com/vKQ30dg35ODxEGCisr1Y4mkWy8oOPllkoddOmGMCSTCO1Scdv-RBBw_RTv8bhehdeD_o4xYtnjFgsVR4sdwwgmKlm1Adu9Rsx3q-wGOTzr-4dLwJZaOA-LAb
[3]: https://lh4.googleusercontent.com/ZIJ2W2C6FVId26JE5UeIYoUZb5tdR-r4Ia0YFGWE76Ng1mD2Y0q9I4gwzgfMKP8u1sTVIQoaD2VHeIgJPZVW-oRB79_ZhOhetkdToVHL5EZ4iTnuRqt5WfiJ
[4]: https://lh4.googleusercontent.com/Mvs38sYFNmZm4RmA3vBLgzzA9JHlBL3CtqgT2octc-aeZA3OwdPqvwp7Cx7er6ngs8JkxagsN_8CyDwEsC-akCikZWNbKcFul7xETqAXyYj2SGP5jpssih7l
[5]: https://lh3.googleusercontent.com/UWgFqD_lCAvCzveP3e-ZcuW_v2Jrr2wp7YpNwY04cbdPdYsKQdKjujf9f0Py0sBuR_G26uYGHDexI50Dx6GAKiKxRk5ySSG-fhDqyzDnm6JuAiIssbkv7kTj
[6]: https://lh6.googleusercontent.com/9wTc-eCC53gKO51No4T6nMfAmVe_gJ8n934xEsLks0P5-2qN3VjRZO87MhfLzUC1kHUTFmQBD54Hv1aqj0qEqvd3zNsaHspgptFYPRXApvhG_Vrng4rIRRRM
[7]: https://lh6.googleusercontent.com/V3sToAQWJ96jeXmyhef3irzK-EQfPzfehxO90BaKIQLE4z_-zHpt-c6kigOPKBJQzNSwmzHebYiy0abrw_-dzIY-wrNaxn7hr2jLHF-GtQ1-dR7cD68iMSgK
[8]: https://lh4.googleusercontent.com/4gFZf-xYqHOyfOjQpFFs7NvEEHdKmXqGO9q-z2JD4MkXYrbwCEJHb-2ciAivEV8rXL2WGR1stjuJ17ghN8raVWCc6p6jD2qqb2AY97tKtTGJpClJrNz_F_mD
[9]: https://lh3.googleusercontent.com/1tTrWXIFlAGt21wxQfINDCVM0RyuH_B72r3Wif9uL4gUUPWQDONIZLQFpFVMVoCz4ew3-DoIn-EKTAklyp2jBViFL03nihzXVPmJ3TrStrgjT4cYvlc_nUkl
