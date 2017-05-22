---
layout: post
title: "Grayscale, Binary and Histogram "
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/gscale_bin_hist/"
---

#### Video Tutorial

#### Introduction

**Gray-scale and binary are two commonly used single-channel formats, as had been mentioned in the introductory tutorial. A histogram is a data representation measure that has the values to be represented along one axis and the frequency along another. In this case, the histogram will show the gray-scale equivalents of the values of the various pixels. We will understand more about it once we have studied the conversions to grayscale and binary formats.**

****N.B - In all these cases, we have written the functions for the conversions and the histogram, in keeping with the principle of modular programming. The actual programs that utilize these functions, and which have been used in the video tutorials, can be found separately as .cpp files under resources.**

#### Grayscale Conversion

**CONCEPT:  
The gray-scale equivalent of a coloured image is what we commonly call the black-and-white version of it. The values of the three channels of each pixel of the coloured image are used to determine what the gray-scale equivalent of the pixel will be, which is an unsigned integer between 0 and 255. For the purpose of conversion of a particular colour in the BGR format to grayscale, there is a particular conversion formula that is to be applied to each pixel.**

Grayscale value = 0.33*(Value of blue channel) + 0.56*(Value of green channel) + 0.11*(Value of red channel)

Therefore the program would involve cycling through each pixel of the 3-channel image, computing the grayscale equivalent of the pixel, and assigning it to the single channel of the pixel at the same position in the output image. This will generate the gray-scale equivalent of the image, as we shall observe in the program.

PROGRAM:  
The function below returns the grayscale equivalent of a BGR image provided to it:

<script src="https://gist.github.com/wowitsmrinal/4246173.js"></script>
  
![][1]{:.img-responsive}  
UNDERSTANDING THE CODE:  
The function takes as its parameter the image to be converted to grayscale format. After the variables have been declared and initialized, we cycle through each pixel one at a time, using the nested for loop. We use the macro IMGDATA to access each channel of each pixel. We assume here that the macro has been correctly defined at the top of the program which uses this function. We have discussed what this macro is in the general programming tutorial. Accordingly, we implement the conversion formula and assign it to each pixel of gscale. After the loop, we return the gray-scale image. ;j++){;i++){

#### Binary Image Conversion

**CONCEPT:  
As was explained previously, a binary image is one where the pixels can only have two values. Most commonly, the two values used are 0 and 255, to represent white and black. Binary images are important when we wish to reduce the amount of information in the image and focus only on regions of the image we need. They will be used for many of the modules we encounter later on for this purpose. Here, however, we will just look at the conversion of coloured images to their binary equivalents, so that the concepts become clearer.  
For conversion to binary, we need to pass through the gray-scale intermediate. Pixels that are of and above a certain brightness level in the gray-scale equivalent will be designated white for the binary image, and the rest will be designated black. Now, what is of prime importance here is the threshold value, which is the value of that particular brightness level. The threshold is usually predefined by the programmer, and the best threshold is determined through trial and error. Of course, there are also developed programs for having dynamic thresholds. This concept of a threshold is very important for other parts of image processing as well.**

PROGRAM:  

<script src="https://gist.github.com/wowitsmrinal/4246207.js"></script>

![][2]{:.img-responsive}  
UNDERSTANDING THE CODE  
This  being another function that returns a single-channel image, the structure is similar to the previous function for gray-scale. Only in this case, the extra parameter is the threshold value whose importance had been discussed prior to this. As explained, we cycle through each pixel [i,j] of the BGR image and get its gray-scale equivalent. If that value is larger than the threshold, we designate the corresponding pixel of the resultant image white, or else we make it black. After doing that, we return the image.  ;j++){;i++){

#### Histograms

**CONCEPT**  
**The general definition of a histogram is a graphical representation of data. Here, we use the term to refer to the pictorial manifestation of the light intensity data. A histogram tells us the frequency of each intensity value from 0 to 255 in the gray-scale equivalent of a picture. It plots each of the intensity values versus the number of pixels that has that value. It is conceptually important, as it gives us an idea of the distribution of various intensity values in a picture.  
There are a number of inbuilt functions in OpenCV that relate to creating a histogram, and we will use those in our own function, to make it. It involves converting the image to a grayscale one, counting the number of times each intensity value appears, and then along the horizontal axis there will be 256 slots (0 to 255) to represent the various intensities. Regarding the horizontal axis, it is true that the highest value any pixel can have is the entire number of pixels of the picture (if all pixels are fully white or black or of the same shade, say). However, in most cases that will not happen, so for greater accuracy we will, while evaluating the image, find out the highest frequency any pixel has.  
Moreover, since even that number might be in the thousands (a 'small' image like [320 X 240] has 76800 pixels, to give you some perspective), we will also scale down that value to a reasonable upper bound like 200, say. So now every frequency will be accordingly adjusted so that it lies between 0 and 200. Thereafter, the vertical height of each bar corresponding to a particular intensity will be its scaled-down frequency.**

**PROGRAM  
The function given below returns the histogram for the gray-scale equivalent of an image, depicting the frequencies of the various intensities**  

<script src="https://gist.github.com/anonymous/3378762.js"></script>

![][3]{:.img-responsive}

**UNDERSTANDING THE CODE**

For us to comprehend the function, we must first look into the OpenCV functions that are related to the creation of a histogram, because the variables declared initially are all done so as parameters to these functions.  
First we encounter the structure CvHistogram. It is a pre-defined structure type in OpenCV, meant to store information about a histogram. Basically, each instance of this structure refers to a particular histogram. You can view the member variables of this structure[ here][4]. Next is the function cvCreateHist(), which helps us create new histograms, and give relevant features to the instance of CvHistogram. Of the parameters for cvCreateHist(), the first is the number of dimensions of the histogram, which is in this case 1, as only 1 set of values is being plotted.  
The next parameter is an array of integers, of length equal to the number of dimensions and the number in each array corresponding to the number of bins of that particular dimension. A bin is simply like the horizontal axis of the histogram, on which the possible intensity values are arranged. Since here, it is one-dimensional, we need an array with only 1 element, and that element is 256. This is why we declared the variables bin to store 256 and hisze[] which is the array whose only member is 256. After that we have the parameter for the type of the histogram. Most often, we use the pre-defined macro CV_HIST_ARRAY, which is used for multi or one-dimensional histograms. The penultimate parameter is an array of floating value pairs, again of length equal to the number of dimensions. Each pair represents the extreme values for that bin. Here, the sole pair is 0 and 255. Thus we have initialised ranges and x-ranges[]. Finally we have a Boolean variable which indicates whether the bins for the histogram will be uniform or not. Here we send 1 as our histogram will be indeed uniform.  
Hereafter, we encounter the function cvCalcHist(). This is the function which actually computes the histogram and places it in hist. This first parameter is a pointer to an array of IplImage* pointers. This is important for passing multiple image planes. Here, there will only be one plane, for a gray-scale image. That is why we generate the gray-scale equivalent of the image, and assign it to the IplImage* array planes[], which is then the parameter for this function. The parameter after that is kept 0; if not, then the histogram will not be cleared before the image is read. The last option is always kept NULL.  
The function cvGetMinMaxHistValue(), as the name suggests, does report the minimum and maximum values  of the histogram, i.e the minimum and maximum frequencies. The values of those are stored in &min_value and &max_value respectively. As has been explained with pointers, using & before a parameter, sends it reference to the function so that changes made to the parameter inside the called function are reflected back in the original values. The image variable for storing the histogram, imgHistogram is declared accordingly. The dimensions of the image are [bins X scale] or [256 X 200]. So along the horizontal axis, there are 256 units and along the vertical, there are 200 units (which we have chosen as our scaled down maximum).  
We want the histogram to be along a white background, so we draw a white rectangle on the image using the cvRectangle function. The first parameter is the image we are to draw on. Then we enter the start and end points of the rectangle, which are (0,0) and (bins-1,scale-1) respectively. The colour white of the rectangle is represented through the macro CV_BGR(255,255,255). The final parameter is the line thickness in units. Having it negative as in this case just draws a filled rectangle.  
We then cycle through each of the values of the intensity, from 0 till 255 (),>

#### In-built conversions

**We have discussed above how to convert images to gray-scale, but there exists a pre-defined function in OpenCV to handle these conversions, along with other colour conversions also. This is the function called cvCvtColor. It is a void function, i.e it has no return type. The first parameter is the source image which is to be converted, the second is the destination, where the result will be sent, and the final parameter is a code phrase that determines the type of conversion needed to be done.  
The important macros we will need for conversion are:  
CV_BGR2GRAY – For converting BGR images to gray-scale  
CV_BGR2HSV – For converting BGR images to HSV images  
CV_HSV2BGR – For converting HSV images to BGR images**

PROGRAM  
The program below shows the usage of the cvCvtColor function:

<script src="https://gist.github.com/anonymous/3378770.js"></script>

**UNDERSTANDING THE CODE**  
Most of the program is as we have seen before. The directives are specified, the variables are initialized and the image file is loaded from the disk. In the cvCvtColor function, the first parameter is the image we wish to convert to gray-scale, the second is the variable that will store the gray-scale image. Finally, we use the macro CV_BGR2HSV, which as we mentioned earlier in the tutorial, directs the function to convert the image from BGR format to the gray-scale equivalent.  
After that, the result is shown, and after the user pushes the key, the images are released and the window closed.

[1]:/img/tutorial/img_processing/gscale/pic1.jpg
[2]: /img/tutorial/img_processing/gscale/pic2.jpg
[3]: /img/tutorial/img_processing/gscale/pic3.JPG
[4]: http://opencv.willowgarage.com/documentation/histograms.html
