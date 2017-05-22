---
layout: post
title: "IP in MATLAB: Taking Off"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/ipstart/"
---

#### Introduction

This tutorial will deal with the very basic operations required to start off with image processing viz reading, writing, displaying images and getting information about them.

#### Reading an Image

Images are read using the syntax imread.

OR

In case filename is used, extension must be specified. The file should exist in the directory specified in the current directory tab in the MATLAB window. Otherwise, the entire path for the file needs to be provided.

#### Size of an Image

Function size gives the size of an image.

OR

The first syntax directly returns the size in the command window while the second one returns the size into variables M & N. Notice that a semi colon is not used for the first syntax since a semi colon would end the command there itself whereas here we need that MATLAB returns the size in the command window.

The whos  statement displays additional information about an image.

  
For example-

![][1]{:.img-responsive}

 

#### Displaying an Image

Images are displayed in the MATLAB window by the imshow command.

a is the number of intensity levels to display where 256 is default.

Using the syntax

displays as black all values less than or equal to low, and as white all values greater than or equal to values in between are displayed as interme-diate intensity values using the default number of levels. Finally, the syntax

sets variable low to the minimum value of array f and high to its maximum value. This form of imshow is useful for displaying images that have a low dy-namic range or that have positive and negative values.

Function pixval is used frequently to display the intensity values of individual pixels interactively. This function displays a cursor overlaid on an image. As the cursor is moved over the image with the mouse, the coordinates of the cursor position and the corresponding intensity values are shown on a display that appears below the figure window. When working with color images, the coordinates as well as the red, green, and blue components are displayed. If the left button on the mouse is clicked and then held pressed, pixval displays the Euclidean distance between the initial and current cursor locations.

If another image needs to be displayed keeping the current window open,  
we can use figure

Above commands open two images a and b  in two separate windows 1 and 2.

#### Writing Images

Images are written to disk using function imwrite, which has the following basic syntax

With this syntax, the string contained in filename must include a recognized file format extension . Alternatively, the desired format can be specified explicitly with a third input argument. For example, the following command writes f  to a TIFF file named home

OR

If path information is not provided, image is saved in the current working directory.

JPEG images have an additional attribute 'quality'. For example

 

saves an image at 25% of its quality.

#### Getting Image Information

Image information is provided by the imfinfo command.

![][2]{:.img-responsive}  
Here also, using the semi colon as in the first line doesnt display the result.

We may use a structure variable to store the information.

 

Then width is stored in the variable 'K.Width', Height is store in 'K.Height' and so on.

Note that imfinfo was used in two ways. The first was to display information directly on the screen while in the second way, the information was stored in a variable, K. This is called the command function duality in MATLAB, an important concept.

#### Frequently Used Commands

 

| ----- |
|

Operation

 |

Matlab command

 |
|

Read an image.

(Within the parenthesis you type the name of the image file you wish to read.

Put the file name within single quotes ' '.)

 |

imread();

 |
|

Write an image to a file.

(As the first argument within the parenthesis you type the name of the image you have worked with.

As a second argument within the parenthesis you type the name of the file and format that you want to write the image to.

Put the file name within single quotes ' '.)

 |

imwrite();

 |
|

Creates a figure on the screen. If there are no figures open, then an imshow command, or any other command which generates

a graphics object, will open a new figure for displaying the object. However, it is good practice to use the figure command whenever you wish to create a new figure.

 |

figure;

 |
|

displays the matrix g as an image.

 |

imshow(g);

 |
|

turns on the pixel values in our figure.

 |

pixval on;

 |
|

the command returns the value of the pixel (i,j)

 |

impixel(i,j);

 |
|

Information about the image

 |

iminfo;

 |
|

Zoom in (using the left and right mouse button).

 |

zoom on;

 |
|

Turn off the zoom function.

 |

zoom off;

 |

 

 

[1]: /img/tutorial/img_processing/ipstart/pic1.PNG
[2]: /img/tutorial/img_processing/ipstart/pic2.PNG
