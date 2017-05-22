---
layout: post
title: "Introductory Programs"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/introductory_programs/"
---

#### Video Tutorial

#### Introduction

**In this tutorial we will cover writing simple programs which use certain basic functions and concepts of OpenCV that will be necessary for future programs. We will be explaining the program as much as needed while we go along, but it would be a good idea to also refer to the OpenCV documentation available on their website to be more thorough and familiar with the various terms used.**

#### Understanding The Code

**The directives (with #include) at the top are standard ones required for accessing the various functions of OpenCV that we will require for our operations. As had been mentioned in the tutorial for integration of OpenCV with Visual Studio, we will require these to appear at the top of all the programs we write for Image Processing.**

As explained in the tutorial on programming concepts, IplImage is a structure data-type of OpenCV that is used to refer to images. Each member of the IplImage data type is a particular image of some sort. Here we use IplImage* to show that we are declaring a pointer variable called img which refers to variable of the data-type IplImage, and thus, by extension, refers to an image.

For the purpose of displaying an image on the screen, we will need a window with a particular name and a particular, to display the image. The char win[] is used to declare the name of the window we want to show the image in.

The function cvLoadImage() is one of the most fundamental functions of OpenCV. It is used to open an image file (which it takes as an argument), in this case the JPEG file called "coldetect" and assign it to an IplImage pointer, in this case img. It should be noted that the image file to be loaded should be present in the directory of the Visual Studio project where this program is written for it to be loaded. (e.g. My Documents / Visual Studio 2010 / Projects / projectname / projectname). If the image is not loaded properly for whatever reason, the reserved value NULL will be returned, and to check for that the if block has been made. If the image is loaded properly, which is our intention here, then the no-file handler is bypassed.

It had been mentioned earlier about the requirement of a window. This window is created with a particular name and size using the cvNamedWindow() function. The name given is specified as the first parameter, and the next ones are the dimensions of the window. In this case the macro CV_WINDOW_AUTOSIZE is used, which just displays the image in its original size. The function cvShowImage() displays the image stored in the variable img, using the window win. Finally, the function cvWaitKey() is used to keep the system idle for as long as a key is pressed, or until the time mentioned as a parameter, in milliseconds, is over. When the parameter is 0, as in this case, the system waits indefinitely for a key to be pressed. This allows us to observe the output comfortably, before pressing a key and proceeding.

Since the window variable and the IplImage pointer are taking up a good deal of memory space, it will be a good idea to free up that memory space before terminating the program, or whenever they are last used. This is not necessary, but it is a good programming practice. The function cvReleaseImage() clears the memory space of img, and the function cvDestroyWindow() closes and erases the window referred to as win. After this has been done, the program exits.

With that, we have made our first proper program using OpenCV!

#### Sample Program 2

**The next program we will observe is a slightly more complicated one. It will generate an image where there are 3 bands of blue, green and red from top to bottom, of equal dimensions. The program in and of itself does not have any further use, but through it we will see how to access and manipulate an image, which will be of prime importance in further modules.**

<script src="https://gist.github.com/abhinavjain241/005cedca49b96faa18b3.js"></script>

#### Understanding The Code

**The directives at the top are same as before, as are the declarations of the IplImage pointer variable and the window name. This time, however, the variable img is not used to refer to an image loaded from the computer, but a new one. This is specified using the function cvCreateImage(). The parameter cvSize() is yet another function that is used to specify the dimensions of the image. The function cvSize() takes two values, the first one being the width and the second the height, and returns it in a manner that is required by the cvCreateImage function. The macro IPL_DEPTH_8U is used to refer to the pixel depth in bits. By default we use a depth of 8 bits, and that is specified with this macro. Finally, the last parameter refers to the number of channels the image is supposed to have. Since this is a colour image, we need to specify 3 here. So this statement basically creates a blank image of dimensions [200X300], of depth 8 bits, and 3 channels and refers the pointer img to it.**

We had mentioned earlier how IplImage is a data-type used to refer to images. To be more precise, it is actually a type of structure defined in the OpenCV. As anyone familiar with structures will know, each instance of a structure type will have a number of member variables included within it, that  are its own. And a pointer to a structure refers to its member variables with the arrow operator (->).  Some of the important member variables of the IplImage structure are imageData, which refers to the array that contains the information of each pixel of the image; height and width which are the height and width of the image in pixels; the parameter widthStep contains the number of bytes between successive points in the same column and successive rows, and nChannels which is the number of channels for the image. Here we already know some of these values as we specified, but this can also be used when img refers to an external image of unknown parameters. In the next set of commands, each of these values for img is assigned to separate variables for easier access.

The nested for loop that follows after these declarations is used to cycle through each pixel one by one, while we modify it according to our wishes. The statement involving the variable loc is very important in terms of understanding how to access each channel. We mentioned earlier how the image should be viewed as a two-dimensional array of pixels, but in the computer's memory everything is truly stored in one dimension. Between two pixels of the same row and successive columns, there is the number of channels of each separating them, and between two pixels of the same column and successive rows, there is the number of the widthStep separating them, so to refer to the channel 0 of the pixel at [i,j], we use the formula mentioned above, multiplying the row number (i) with the value of the widthStep and the adding that to the column number (j) multiplied with the number of channels. Now imgdat[location] will refer to the channel 0, or the blue channel of the pixel at [i,j], and imgdat[location+1] refers to the channel 1 or the green channel and imgdat [location+2] refers to the red channel.

We initially assign each of these channels as zero, and then, based on the value of i, we make the pixel fully blue (if i is in the top one-third), fully green (if i is in the middle segment) and fully red (if i is in the bottom one-third). Since imgdat refers to img->imageData, any changes we make to it will be directly reflected in img. Thereafter, as we did before, we display img in the window and wait for the user to press a key before destroying both and freeing the memory.
