---
author: rbtxadmin
comments: true
date: 2015-01-06T16:54:36.000Z
layout: post
slug: complete-minefield-tutorial
title: Complete Minefield Tutorial
wordpress_id: 1481
categories:
  - Robotix 2015
---

# Minefield Tutorial
Problem statement: Build a semi-autonomous robot capable of detecting hidden metal mines autonomously and rescuing stranded victims using gesture recognition in a minefield.

Video Tutorial for robot

Introduction:

This tutorial assumes basic prerequisite knowledge of differential drive and microcontrollers. Otherwise, the following tutorials can be referred:
1. [Differential Drive]({{ site.baseurl }}/tutorials/category/kraig/dd)
2. [AVR / Arduino]({{ site.baseurl }}/tutorials/category/avr/avrbasics)
3. [ADC]({{ site.baseurl }}/tutorials/categ/avr/adc)

What the robot requires to do?
- Traverse arena using hand gestures.
- Pick and drop victims.
- Identify metal mines on the arena.

Technically what the bot has to do:
- Control the rotation of motors using hand gestures.
- Controlling the gripper using gesture.
- Implement metal detection.

Now let us analyse how each of these can be achieved.

Gesture control: There are many ways by which we can implement gesture control. For that we require a sensor or a device that could differentiate different orientations of our hands with respect to a reference position. we can achieve this by using following sensors and devices.
- Accelerometers
- Gyroscopic sensors/inertial measurement units
- Using camera and image processing.

Let's have a look at how the methods mentioned above can be employed to achieve our objective - gesture recognition.

We can use a camera that will capture the image of our hand and process the image in order to recognize what orientation it is in and can instruct the bot to move accordingly. But this requires too much of coding and processing power. If you are interested you can go through the image processing tutorials on our website.

Another easier way to achieve gesture control is using sensors like accelerometer or gyroscope sensor. These sensors can be placed on our hand and as we change the orientation of our hand the orientation of the sensors is also changed with respect to a particular reference orientation. Accelerometer or gyroscope sensor?

Both of the above mentioned sensors can be used effectively to achieve what we want, but we would suggest using an accelerometer as is it a lot less expensive than gyroscopic sensors or inertial measurement units and works well, with good resolution.

Moreover gyroscopic sensors calculate angular velocity instead of acceleration so we will have to integrate it in order to get acceleration which can induce more error in the readings.

Gesture control using accelerometer:

Using gesture control we need to accomplish two things:
- Locomotion/traversal
- Clasping victims/objects

In order to understand how an accelerometer works and get an insight into how it can be used to fulfill our purpose, you might want to first go through the [accelerometer tutorial]({{ site.baseurl }}/tutorials/categ/auto/accelero) on our website and read it thoroughly.

Locomotion/traversal:

After reading the accelerometer tutorial, you will get an idea about how an accelerometer works, and can then work on the following set of instructions:

Let the accelerometer be placed on the top of the palm with the palm parallel to the ground. Consider the x axis output values of the accelerometer. Here X axis is along your hand as indicated by the horizontal dashed line in the following images. The ADC values of x-out pin in accelerometer will vary from one extreme to another extreme corresponding to the following two extreme positions of the palm (i.e. forward tilt and backward tilt) and would lie somewhere in between the two when the palm is parallel to the ground. -Say the ADC values from the output pin "x-out" vary from 100 to 450 between the extremes and is around 250 in the middle.

![]({{ site.baseurl }}/Images/Tuts/Minefield/image02.jpg){:class="img-responsive"} Fig 1 : One extreme(adc value is minimum, say 100)

![]({{ site.baseurl }}/Images/Tuts/Minefield/image03.jpg){:class="img-responsive"}

Fig 2 : Other extreme(adc value is maximum, say 450)

Similarly,  along the y-axis let the values of the "y-out" pin vary from 100 to 450 during left extreme tilt to right extreme tilt respectively. The y-axis is as shown in the figure, perpendicular to the x-axis, in the plane parallel to the ground.

![]({{ site.baseurl }}/Images/Tuts/Minefield/image01.jpg){:class="img-responsive"}

Fig 3: One extreme("y-out" adc value is minimum, say 100)

![]({{ site.baseurl }}/Images/Tuts/Minefield/image05.jpg){:class="img-responsive"}

Fig 4: One extreme("y-out" adc value is maximum, say 450)

Algorithm for controlling the motors: Now that we have different ranges of ADC values for each gesture, we can run our Differential drive according to it depending on which range the ADC values of the 3 output pins is lying.

Pseudo Code:

_//Comment this code or replace the numeric values with X-min (value of X-axis when hand bent down), X-max (value of X-axis when hand bent up), X-mid (Middle range)_

_if(x-out<125 && y-out >125 && y-out<425) // move forward;_

_else if(x-out>425 && y-out >125 && y-out<425) // move back ;_

_else if(x-out>125 && x-out <425 && y-out>425) // move right;_

_else if(x-out<125 && x-out >425 && y-out<125) // move left; else stall;_

Clasping victims/objects:

Clasping of objects can be done in a similar way using another accelerometer using the ADC values of any one of the axis. we used a servo operated gripper for gripping the objects. Let the accelerometer be placed on the inside ot the palm being perpendicular to the ground as shown.

![]({{ site.baseurl }}/Images/Tuts/Minefield/image04.jpg){:class="img-responsive"}

Fig: Orientation 1

![]({{ site.baseurl }}/Images/Tuts/Minefield/image00.jpg){:class="img-responsive"} Fig: Orientation 2

Let the ADC values of the reference axis pins be 50-150 (For Orientation 1) and 300-400(For Orientation 2). Now a simple code can be used to operate the gripper corresponding to the values of the the output pin of the reference axis.

Pseudo Code:

_if (out>50 && out<150) servo position X Deg; //position of servo corresponding to gripper open else if (out>300 && out<400) servo position Y deg; //position of servo corresponding to gripper closed_

Metal Detection:

A more interesting and challenging part of this event is mine detection, which is analogous to metal detection. There are two main techniques for metal detection-
- Beat-frequency oscillation (BFO)
- Very low frequency (VLF)
- Pulse induction (PI)

For getting an insight into how these methods work you can visit this [link](http://electronics.howstuffworks.com/gadgets/other-gadgets/metal-detector1.htm).

For our testing we used a BFO metal detector. CIRCUIT DIAGRAM:

![](https://lh5.googleusercontent.com/9BJKfidRQ1SpOLex1XPS0o053xTRx5H9JVZCDwCApsfbxScU1952NMMAEvxYIg0nU-7R3r4_APEf3PJ1SR1C0W7majZDnF0c7if-8tXZ-xN4Njm8RQbmWSxaW40pqXfcag){:class="img-responsive"} COMPONENTS:

![](https://lh3.googleusercontent.com/fUYrBGkW9x5kthRUxxqFhYERiTFqWJKRXgX2INCznDa06OMnudt-zXqd3yqPTqae9r4CH-iLxo9LIg-iMrXvfP0AlXP70UZLGr6L4nNp_cubEeNgKru2Mynv--gHpq1XOQ){:class="img-responsive"}

[![DIY]({{ site.baseurl }}/img/blog/2014/11/DIY-724x1024.jpg)]({{ site.baseurl }}/img/blog/2014/11/DIY.jpg){:class="img-responsive"}

[![DIY Back]({{ site.baseurl }}/img/blog/2014/11/DIY-Back-724x1024.jpg)]({{ site.baseurl }}/img/blog/2014/11/DIY-Back.jpg){:class="img-responsive"}

Here is the [Event Video Tutorial](https://www.youtube.com/watch?v=-CECP3yWKSo&index=4&list=PLzio60ZRzGwZmI8WDMXtylcg4KYOohmP9).

Event Details can be found [here]({{ site.baseurl }}/minefield). Tutorial can also be found [here]({{ site.baseurl }}/tutorials/categ/eventtutes/minefield). Pictorial Do It Yourself Tutorial (DIY) is [here]({{ site.baseurl }}/Images/DIYminefield.pdf). Facebook Discussion Group for any doubts and queries is [here](https://www.facebook.com/groups/minefieldevent/). Register now for the event [here](http://www.ktj.in/events/minefield).
