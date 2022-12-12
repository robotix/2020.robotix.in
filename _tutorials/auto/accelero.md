---
layout: post
title: "Accelerometer"
categories:
  - auto
redirect_from: "/tutorials/category/auto/accelero/"
---

#### Introduction

As the name suggests, Accelerometer is a device which measures acceleration.  
Accelerometers are of different sensitivities and ranges. There are accelerometers which measure acceleration in only 2 axes or only 1 axis. Accelerometers with lower ranges such as the ones with 1.5g or 2 g are more sensitive than the ones which have 16 g as their range. The more sensitive accelerometers can be used for measuring tilt whereas the less sensitive ones (such as the one which has range 16 g) can be used to measure shock.  
For understanding what accelerometer exactly measures and how it works, one must have basic knowledge of vectors and its resultant.  
In this tutorial, we'll be working on 6DOF Razor IMU which has an accelerometer IC called ADXL335. This is MEMS which stands for micro electro-mechanical system. This accelerometer has a 3-dimensional measurement. That means it can measure acceleration along 3 axes. It has a range of +3g with a typical sensitivity of 300mV/g at 3V supply. Refer to its datasheet for more information on sensitivity and zero voltage.

![][1]

  
Our world is a 3-dimensional world. So, whatever force of gravity you have can be resolved into 3 components – The X component (Ax), the Y component (Ay) and the Z component (Az). The resultant of these 3 components gives the total amount of force acting. However, it won't give you the acceleration in m/s2 directly. The output from the accelerometer will be in V which will vary within a certain range as you move it in the possible directions. The voltage obtained is to be multiplied with the sensitivity so as to get the amount of gravitational acceleration acting.  
In this tutorial, we'll be observing the variation in the ADC value as we tilt the accelerometer. The more the tilt, more must be the ADC value.

#### Pin Explanation

Any accelerometer chip has the following pins at least:  
Pin X: O/P pin which gives voltage corresponding to the acceleration sensed along the X axis.  
Pin Y: O/P pin which gives voltage corresponding to the acceleration sensed along the Y axis.  
Pin Z: O/P pin which gives voltage corresponding to the acceleration sensed along the Z axis.  
Vcc: Supply Voltage  
Gnd: Ground  
ST: Stands for self test.

#### Working

The working of an accelerometer can be understood by understanding a simple analogy. Note that this is not the exact internal working. This is just an analogy to understand how it works and the output it gives.  
Imagine a sensitive box as shown in figure.

![][2]

This represents a box containing a ball within it. When this box is installed on the body of robot, the ball moves as per the movement of the robot. Note the sides of walls it is in contact as the robot moves. Each wall represents a side of the geometrical axis. As the robot moves, the ball inside moves and touches the corresponding walls.  
Let us take an example to understand.  
Here, we assume our natural axis along which gravity acts to be Z axis where the negative Z axis is downwards. Now, when the robot stands still, entire force of gravity acts in the –Z direction. So, the ball rests on the –Z wall of the box as shown in the above image and hence, the Z terminal of the accelerometer will experience a voltage corresponding to –g. See figure 1.  
Now, take another example. Let's say that now our body is tilted by 45 degrees. Then the ball in the box will move in the manner as shown in figure 2. And hence, the voltage at pin x will correspond to -(g cos45)V and voltage at pin z will correspond to –(g sin45) V. See figure 2.

![][2]

It is important to note that the reference axes with respect to the chip is always constant but will vary according to you as you change the orientation of the chip. Hence, whenever you have to use it, we always have to think of the axes as per the chip because orientation of the axes does not change with respect to the chip.  
The above was just an analogical explanation to understand what exactly the accelerometer output is. Actual MEMS accelerometers have damped spring arrangement to perform the same.

**Few important things to note : **

It is important to know that the accelerometer gives output in a voltage range. A general _misconception _about accelerometers can be that if the voltage output at +g is say 'x' V then, voltage output at -g would be ' - x' V. This is absolutely _incorrect_. Also, the voltage output at 0 gravity is NOT zero as many might expect.

You should always refer to the datasheet of the accelerometer for it. Most of the accelerometers work at 3.3 V power supply. So, the voltage output will always vary within 0 - 3.3 V.

#### Interfacing with uC

Now that we've understood the output given by accelerometer, interfacing it with a microcontroller is easy. The output from the X, Y, Z pins can be used as an input for the microcontroller. Since, the input for uC is analog, we'll have to run ADC to deal with its values. Once you have the digital data in hand, you can use it as per your requirement.

[1]: http://robotix.in/uploads/15.png
[2]:
