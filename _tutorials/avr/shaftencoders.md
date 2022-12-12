---
layout: post
title: "Shaft Encoders"
categories:
  - avr
redirect_from: "/tutorials/category/avr/shaftencoders/"
---

#### Basic Concept

Encoders are an add-on on a robot to make accurate movements or to measure quantities like distance, speed, acceleration etc. First of all let us have a look at the hardware. Most of the encoders work using an optical sensing method while there are also other methods like magnetic methods. Encoders can be used for rotary as well as linear motion.

 ![][1]

 

In the first image the encoder uses a disk with slits in the end. A light source and a sensor are placed on the opposite sides of the disk so that the light can pass through the slit. The second image uses a disk that has alternate black and white stripes. In this case both the light source and the detector are on the same side of the disk.  
In this way the encoder circuitry will be able to produce a square wave signal between 0v and 5v. This allows us to count the number of slits that have crossed the detector.

![][2]

In the first image the encoder uses a disk with slits in the end. A light source and a sensor are placed on the opposite sides of the disk so that the light can pass through the slit. The second image uses a disk that has alternate black and white stripes. In this case both the light source and the detector are on the same side of the disk.

In this way the encoder circuitry will be able to produce a square wave signal between 0v and 5v. This allows us to count the number of slits that have crossed the detector.

There is one deficiency with this simple encoder.  The processor will receive pulses that look the same whether the wheel is turning forward or reverse.  Hence, the processor doesn't know whether to add or subtract the pulses from the distance traveled without some additional information.  Your software may be able to ASSUME which direction the wheel is turning (i.e. if the motor is being commanded forward, then probably the encoder pulses are counting forward), but using a more sophisticated encoder solves the problem directly

A "quadrature" encoder has one additional detector.  Note that in the drawing, detector A is pointed at the start of a white sector and detector B is pointed to the center of a black sector.  This offset provides the additional information.

![][3]

If the black/white strip is passing from right to left (moving left), the processor will get a pulse to count from detector A as it reaches the beginning of a white strip (in the position shown).  At that time, detector B is looking at a black strip and is putting out a 0 logic signal.  Using your imagination, if the black/white strip is moving to the right instead,  when the A detector encounters the beginning of a white strip, detector B will be in the middle of a white strip.  Hence, the direction of motion when detector A gets a pulse can be determined by looking at the status of detector B.    Note that if your are building your own quadrature encoder, the A and B detectors don't have to be measuring the same light strip (that is, right next to each other), they can be located anywhere around the wheel as long as they have the same offset of one half the width of a black or white strip.

#### Measuring Distance

Now, there are many things that can be measured using the information from an encoder. Let us look at how to calculate the distance travelled.

Let the number of slits on the disk be 'n' and let the circumference of the wheel be 'd'cm. Then, therefore, distance covered through each slit=d/n cm

Now let us look at the software part of this. First we have to detect the pulses created by the encoder. There are mainly two methods for doing this: **Polling and Interrupts**

**The interrupts part will be discussed in another tutorial.**

Let us see how it is done by **polling**. The program continuously samples the input from the pin to which the encoder is connected. It counts the number of highs or lows and consequently increases the distance covered. This has several disadvantages. For one, it doesn't allow the program to do anything else while polling is going on and secondly when the program is doing something else it may miss to read a pulse thus giving us an erroneous value.

 

Encoder algorithm:

**With one detector:**

When leading edge of pulse occurs:  
    IF (motor command is forward) THEN distance = distance + 1  
    IF (motor command is reverse) THEN distance = distance -1

Note that if the motor command is not forward or reverse, distance is not changed.  This avoids the possible problem of the robot stopping where the detector is right on the edge of a white strip and might be tripping on and off with no real motion. 

Another problem is that if the motor is rolling along and is made to stop, it might rotate a little before stopping.  The pseudo code above would miss the pulses that occur during coasting.  One way to minimize this problem is to slowly decelerate to a stop so there is little or no rotation after the motor is set to zero.

**With two detectors (quadrature):**

When leading edge of pulse occurs:  
    IF (detector B is high) THEN distance = distance + 1  
    IF (detector B is low) THEN distance = distance -1

This logic will count all wheel motion properly.  Even coasting after motor shutdown, and even if the motor is commanding reverse and the wheel happens to be going forward (probably more coasting).  The problem of stopping on the edge of a white sector still exists. 

[1]: https://lh6.googleusercontent.com/-1IZIB7l9cvg/UEG64ve2bDI/AAAAAAAAAEk/lXtezMeO6dQ/s372/Capture.jpg
[2]: https://lh5.googleusercontent.com/-tuiGlZykJbs/UEG7OMQv5eI/AAAAAAAAAEs/CcIzc-25Zx0/s278/Capture1.jpg
[3]: https://lh3.googleusercontent.com/-PPndQDKY2eg/UEG7hERxYtI/AAAAAAAAAE0/O72-PkDsVik/s571/Capture3.jpg
