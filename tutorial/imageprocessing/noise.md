# Tutorials

#### Introduction

Morphological operations are methods for processing binary images based on shapes. These operations take a binary image as input, and return a binary image as output. The value of each pixel in the output image is based on the corresponding input pixel and its neighbors. By choosing the neighborhood shape appropriately, you can construct a morphological operation that is sensitive to specific shapes in the input image.

#### General Noise Filtering

Erosion and dilation are basic examples of what is known as morphological transformations on an image. They involve taking kernels, which are small units (generally 3X3) of the image, one at a time, and either removing that kernel from the image altogether or adding it completely to the image.

In general, dilation expands the region as it tends to fill out small intrusions, while erosion reduces the image by getting rid of small extrusions. Which of the two operations is carried out on the kernel will depend on whether that kernel is more of a cavity or a small outward extrusion. It should also be noted that is not necessary to have a 3X3 kernel, but is the generally accepted practice.

This kind of noise reduction is usually done on binary images, where, say, white represents the wanted information and black the unwanted information. Now, we consider each kernel of the image and scan the pixels of it. If the majority of the pixels in the kernel are white, then the kernel is made white, which amounts to dilation or expanding the image and vice versa. So basically the value of the entire kernel in the resultant image is uniform.

#### Dilution & Erosion

If the majority of the pixels in the kernel are white, then the kernel is made white, which amounts to dilation or expanding the image.

 

#### Morphological Filtering

The main morphological operations are dilation and erosion. Dilation and erosion are related operations, although they produce very different results. Each dilation or erosion operation uses a specified neighborhood. The state of any given pixel in the output image is determined by applying a rule to the neighborhood of the corresponding pixel in the input image. The rule used defines the operation as a dilation or an erosion:

•For dilation, if any pixel in the input pixel's neighborhood is on, the output pixel is on. Otherwise, the output pixel is off.

•For erosion, if every pixel in the input pixel's neighborhood is on, the output pixel is on. Otherwise, the output pixel is off.

The neighborhood for a dilation or erosion operation can be of arbitrary shape and size. The neighborhood is represented by a structuring element, which is a matrix consisting of only 0's and 1's. The center pixel in the structuring element represents the pixel of interest, while the elements in the matrix that are on (i.e., = 1) define the neighborhood.

The Image Processing Toolbox performs dilation through the imdilate function, and erosion through the imerode function. Each of these functions takes an input image and a structuring element as input, and returns an output image.

#### Dilation

![][1]

#### Erosion

![][2]

[1]: https://lh3.googleusercontent.com/3d_XwDYg6oJPh9q3kpCsR8MQltGtLlHDx70oRS2GF9Uotnp7nJXea0vKzWi1zW3gHxrPUV97P14Ne_M6ijiQUyY_H4YKhLQZHgiY2YwCQfK3nG6G2X2mZ153
[2]: https://lh3.googleusercontent.com/wDYC37JP9kflFRERGN6-2tECthzcDAkjSlDx7VfL18-EYKwCWwPHZVXo0DLUlKnON7RcC3ByFQ5KloVqV8tFMnLUwaLswDznkjxts4j2jxoVlje9idI5qQ8t
