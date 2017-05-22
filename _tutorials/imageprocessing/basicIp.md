---
layout: post
title: "Basic Image Processing"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/basicIp/"
---

#### Introduction

Image processing involves changing the nature of an image in order to:

1\. Improve its pictorial information for human interpretation,  
2\. Render it more suitable for autonomous machine perception.

We shall be concerned with digital image processing, which involves using a computer to analyse the nature of a digital image.

#### Improving/Modifying an Image

_Enhancing the edges of an image to make it appear sharper._

Note how the second image appears cleaner; it is a more pleasant image. Sharpening edges  
is a vital component of printing: in order for an image to appear at its best on the printed  
page; some sharpening is usually performed.

![][1]{:.img-responsive}

_Removing noise from an image_

Noise is any random error in an image. Noise is a very common problem in data transmission: all sorts of electronic components may modify data passing through them, and the results may be undesirable.

_Removing motion blur from an image_

Motion blur may occur when the shutter speed of the camera is too long for the speed of the object. In photographs of fast moving objects: athletes, vehicles for example, the problem of blur may be considerable.

_Obtaining the features of an image_

This may be necessary for the measurement of objects in an image. Once we have the edges we can measure their spread, and the area contained within them. We can use edge detection algorithms as a first step in edge enhancement. We can have colour, shape detection and more.

_Removing detail from an image_

For measurement or counting purposes, we may not be interested in all the details of an image. For example, while considering machine inspected items on an assembly line, the only matters of interest may be shape, size or colour. For such cases, we may want to simplify the image to only handle the things of interest.

_Image Segmentation_

This involves subdividing an image into constituent parts, or isolating certain aspects of an image. (finding lines, circles, or particular shapes in an image, in an aerial photograph, identifying cars, trees, buildings, or roads.

#### Images as Functions in CV

Suppose we take an image, a photo, say. For the moment, lets keep things simple and assume the photo is monochromatic (that is, shades of grey only). We may consider this image as being a two dimensional function, where the function values give the brightness of the image at any given point. We may assume that in such an image brightness values can be any real numbers in the range 0 (black) to 1 (white). The ranges of x and y will clearly depend on the image, but they can take all real values between their minima and maxima.

Such a function can of course be plotted. However, such a plot is of limited use to us in terms of image analysis. The concept of an image as a function, however, will be vital for the development and implementation of image processing techniques.

![][2]{:.img-responsive}

A digital image differs from a photo in that the x, y and f(x, y) values are all discrete. Usually they take on only integer values, so the image will have x and y ranging from 1 to 256 each, and the brightness values also ranging from 0 (black) to 255 (white). A digital image, as we have seen above, can be considered as a large array of sampled points from the continuous image, each of which has a particular quantized brightness; these points are the pixels which constitute the digital image. The pixels surrounding a given pixel constitute its neighbourhood. A neighbourhood can be characterized by its shape in the same way as a matrix: we can speak, for example, of a 3X3 neighbourhood, or of a 5X7 neighbourhood. Except in very special circumstances, neighbourhoods have odd numbers of rows and columns; this ensures that the current pixel is in the centre of the neighbourhood. If a neighbourhood has an even number of rows or columns (or both), it may be necessary to specify which pixel in the neighbourhood is the current pixel.

[1]: /img/tutorial/img_processing/basic/Sharpening_Sharpen.jpg
[2]: /img/tutorial/img_processing/basic/2.PNG
