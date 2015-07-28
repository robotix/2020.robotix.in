---
layout: post
title: "Contrast Adjustment"
categories:
  - imageprocessing
---

#### Introduction

Contrast is created by the difference in luminance, the amount of reflected light, reflected from two adjacent surfaces.

There is also the Weber definition of contrast:  
Contrast =(Lmax - Lmin)/Lmax

Lmax = Luminance on the lighter surface  
Lmin = Luminance on the darker surface

When the darker surface is black and reflects no light, the ratio is 1. Contrast is usually expressed as percent; the ratio is multiplied by 100. The maximum contrast is thus 100% contrast. It is the difference between the lights and darks in an image. If an image is of low contrast, then the colours will be muted and dull whereas an image of high contrast has bright and vibrant colours.

#### Contrast Stretching

The function shown below is a contrast stretching transformation function because it 

![][1]

compresses the input levels lower than m into a narrow range of dark levels and the values above m into a narrow band of light levels in the output image. The result is an image of higher contrast. In fact, in the limiting case shown below, the output is a binary image.

![][2]

The function is of the form

![][3]

where r  represents the intensities of the input image, s the corresponding intensity values in the output image, and E controls the slope of the function. It can be implemented as

 

eps  is used to prevent overflow if f has any 0 values. Since the limiting value of s is 1, output values are scaled to the range (0,1) in this transformation. In the above figure the shape was obtained with E=20. The following example shows the improvement of contrast using this function

 

![][4]

            Original Image                                                         Result

[1]: https://lh3.googleusercontent.com/pLDgbvErRpTpbdT7Th3xdjRmlUdfPqTcQFTTfukdWPARBDTzN6hn-QM2kRD4dU9Y2X0Z5oMj-a2N0IW2_H5eKLAaxYha0QUNrxt1Byy2c_mK46ORYW_T68gb
[2]: https://lh5.googleusercontent.com/mzhrSlHzuGtg-2C6h8yQGK68CqsLygO_zYT_Zxkj9Fmy-62oFsScw-yKmdU-gBaPezJi26uNuePosqZGTfuarpxqlOHxaYNPAsac6zbov0nQNRM4Pw9HYa1b
[3]: https://lh3.googleusercontent.com/TXRqDGw4Edsyj2fckpe_cy85YZc1_OhAPEURHndCxGE5HlAXccTPOKg0WmVi8BpY8U_qFWFIO5hIK-3uc4K_w63dk2629ekfvyklIAsTwohea0kaRK1DBBMd
[4]: https://lh6.googleusercontent.com/y-WPnDk682S26I2rYaAWqlpGFytQjivemoGvdvOdWzW-KoCh7t4XVmTPq1126ClkpDIbNDS7IKorFgyF8X5d8pVPI4ltwKK8juEYI-SJ4z25hyFd4uFLKXv7
