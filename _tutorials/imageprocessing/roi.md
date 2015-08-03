---
layout: post
title: "ROI Based Processing"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/roi/"
---

#### Specify a ROI

A region of interest is a portion of an image that you want to filter or perform some other operation on. You define a region of interest by creating a binary mask, which is a binary image with the same size as the image you want to process. The mask contains 1's for all pixels that are part of the region of interest, and 0's everywhere else. This section discusses methods for creating binary masks.

#### Selecting a Polygon

You can use the roipoly function to specify a polygonal region of interest. If you call roipoly with no input arguments, the cursor changes to a cross hair when it is over the image displayed in the current axes. You can then specify the vertices of the polygon by clicking on points in the image with the mouse. When you are done selecting vertices, press Return; roipoly returns a binary image of the same size as the input image, containing 1's inside the specified polygon, and 0's everywhere else.

The example below illustrates using roipoly to create a binary mask. The border of the selected region is shown in red on the original image.

![][1]![][2]

 

#### Other Selection Methods

roipoly provides an easy way to create a binary mask. However, you can use any binary image as a mask, provided that the binary image is the same size as the image being filtered. For example, suppose you want to filter the intensity image I, filtering only those pixels whose values are greater than 0.5. You can create the appropriate mask with this command:

You can also use the roicolor function to define the region of interest based on a color or intensity range.

roicolor selects a region of interest (ROI) within an indexed or intensity image and returns a binary image. (You can use the returned image as a mask for masked filtering using roifilt2.)  
BW = roicolor(A,low,high) returns an ROI selected as those pixels that lie within the colormap range [low high].

#### Filtering a Region

You can use the roifilt2 function to process a region of interest. When you call roifilt2, you specify an intensity image, a binary mask, and a filter. roifilt2 filters the input image and returns an image that consists of filtered values for pixels where the binary mask contains 1's, and unfiltered values for pixels where the binary mask contains 0's. This type of operation is called masked filtering. For example: ![][3]

![][4]

We can see that the filter is applied only in the region selected.

roifilt2 also enables you to specify your own function to operate on the region of interest.

 

#### Filling a Region

You can use the roifill function to fill a region of interest, interpolating from the borders of the region. This function is useful for image editing, including removal of extraneous details or artifacts. roifill performs the fill operation using an interpolation method based on Laplace's equation. This method results in the smoothest possible fill, given the values on the boundary of the region. As with roipoly, you select the region of interest with the mouse. When you complete the selection, roifill returns an image with the selected region filled  
in.

This example uses roifill to modify the trees image. The border of the selected region is shown in red on the original image.

 

![][5]    ![][6]

[1]: https://lh4.googleusercontent.com/zB8SxE7Oxtm3hqWTxMrqbg-Nj3uqLYwleskZRnEGQyxKewhs6vsbSkYDA_G4dk4atto4gwxyc-2NmS77vpVWN1FnMB_c37qxSKkgTb626EAJ5BglyRMxLtGL
[2]: https://lh5.googleusercontent.com/nPp_sDOX3Fa3n3rzkdIa53yGInO8MVZU7Uz2yJJm0GaexwG3aoaI1mONz2pfhubmgo2ATvaiAjTvdXK19N62-JYhwjhUzx7JUCLyT4i5WuzOWkAguCuhyYr6
[3]: https://lh3.googleusercontent.com/HrTyJ_9Y-MWjiVAf1EI2vmyc9eekR91Oh3R8FdbjzY11Is1uu10TgxQ1OHFPsFvROCwSFQIyP7cj8YH8ZDdyd0yMPRBNgrG7a5QzDpRAkE3i84kqtEM66fg0
[4]: https://lh5.googleusercontent.com/sFP87h-q6LaGfr15IO3C8YkQaCIQnCPh5FP6PbPAIPCWCaT1k9y6EPLK0ljjm5r7YFtLfA9ItIv_04rLufX9c6oHb5cdyn9RF37z0FIln9NZw0R76vvjSAiP
[5]: https://lh4.googleusercontent.com/Trr26y3HOIe50gtcjMbJ_FgscHuluuWUcDmPAFuxEF2xgIqdAXXpr7RmaWCqPBLo6XNksZ28lVm_-YfmruKlxss_AQKvDapWO8aCFWXh-XSpVjejLhBaoqLy
[6]: https://lh6.googleusercontent.com/CjYqOs7EfZV5KEocvhwxi380qP82po3Xu25QXiPScQAZEEIXY2PGnSuLPx20kEsimVyXN_w1nu9XtsR97VKnTPR6PMY9Rk0OYiZI3IxiUar68r21mTMq5JLV
