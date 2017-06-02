---
layout: post
title: "Line Follower without uC"
categories:
  - auto
redirect_from: "/tutorials/category/auto/lfrbjt/"
---
# Tutorials

#### Introduction

In this tutorial, we'll make a simple line follower which follows a white line on a black surface or vice-versa using simple basic components.

#### Things required

1\. Sensor pairs (either LED-LDR or IR LED-Photodiode) (2)

2\. 10k Ohm Potentiometers (4)

3\. 1k Ohm resistors (4)

4\. LM358N dual amplifier IC (1)

5\. BC547 npn BJT (2)

6\. B557 pnp BJT (2)

7\. Flyback diodes (2)

8\. 8 pin IC base for your LM358

9\. PCB, relimates

10\. A differential drive chasis

#### Sensor Circuit

We'll be basically dealing with two circuits here.

i) Sensor Circuit

ii) Comparator-bjt circuit

Sensor Circuit

The sensor circuit will basically tell you whether your robot is on the line or out of line. The sensors suitable for this purpose are LED-LDR sensor, or IR LED-Photodiode sensor pair.

Click here to understand the basics of these sensor pairs.

Now, let us see how it'll help to differentiate the line from the surface. We know the fact that a white surface will anytime reflect more rays than a black surface. This is the basic principle that we use to judge whether the sensor pair is on white line or black line.

Consider this LED-LDR sensor pair.

![][1]

Now, when this sensor pair is on a white line,

=> more led light reflected by the surface

=> more light falls on LDR

=> lesser LDR resistance

=> the voltage across LDR will be less

 

Similarly, when the sensor pair is on a black line,

=> the voltage across LDR will be high.

Similarly,  for the IR LED-Photodiode sensor pair,

![][2]

The voltage across the IR Photodiode will vary as per the intensity of light falling on it.

More the reflected light, lesser the voltage across ir receiver.

Here is your sensor circuit:

 

The 10k component is your potentiometer which you might have to set to the maximum range. This resistance, ideally should be near ( R(light) * R(dark) )^1/2 where, R(light) is the approximate resistance of LDR during light and R(dark) is the resistance of the same in dark.

 

#### Comparator Circuit

Now for analysing the sensor output, we use a comparator to get a digital output.

Click [here][3] to understand the basics of comparators.

![][4]

Now, the LED-LDR is connected to a comparator LM358. LM358 is an operational amplifier IC which is being used as a comparator. The non inverting terminal of op-amp (The + terminal) reads the voltage across resistor R4. And, the inverting terminal of op-amp (The – terminal) reads the voltage that has been set at the potentiometer.

 

When on white line, V(ldr) less => V(R4) more.

When on black line, V(ldr) more => V(R4) less.

The voltage of at potentiometer (- terminal), V(pot) is such that :

V(R4)white > V(pot) > V(R4)black

Such a voltage is set be setting up the corresponding potentiometer resistance.

Hence, now

When sensor on white line :

V(R4)white > V(pot)

=> V+ > V-

=> Op-amp output = High

When sensor on black line :

V(pot) > V(R4)black

=> V- > V+

=> Op-amp output = Low

This is how we know whether the sensor is on black or white line.

So, if one end of the motor is connected to 12 V and the other end is connected to the Op-amp output, you'll be able to run the motor or stall the motor depending on which surface your sensor(LED-LDR pair) is.

When white,

Potentials across motor : 12-12

=> stall condition

When black,

Potentials across motor : 12-0

=> motor runs

#### Algorithm

Now, how do we implement this on our line follower?

In this tutorial, we'll be making a 2 sensor line follower which will be working as –

![][5]

For the turns, we have one motor stalled and other running.

#### Final Circuit

![][6]

sensor circuit

#### Full robot

![][7]

 

Assembled bot.

[1]: http://learning.media.mit.edu/projects/gogo/documents/images/light_reflective_LED_LDR.jpg
[2]: http://robotix.in/img/blog/2013/09/sensor.jpg
[3]: {{ site.baseurl }}/tutorials/categ/kraig/kraig301
[4]: http://robotix.in/img/blog/2013/09/op-amp-ckt.png
[5]: https://lh5.googleusercontent.com/zfYodcIU0p_agqyGhRL8KhCHwcPRy0UCw_B8Nc9Nqe30JjqVS-K5gsr1uIhjW7QCZzG409tO_7esb3mIhIzWCaC83fw7OtA7eY4qu6CEWaIyDgw8zf_RUns7
[6]: https://lh4.googleusercontent.com/jxjhp1PiCIgwMtBZan9maY-W6ZsAhxIOXfDPsPJOPFfh3_9rKYtEEwSPghnfkWu6b8H0TyA85ctsTMvVkLaaE2W_gjz1LnIRUD730fueKB7lTJ_jULQvFCnD
[7]: https://lh5.googleusercontent.com/edBlJrjfbW7IyJVrDQSvQ3SWhY9PlC-KioxenOhUpkYT8uT6FWWyoQ2SO8ZwjY_Jy711NYA6wVmKaH6DK2n8YTCh766AyENkvc_PYWJE9H2toIN3CjeBVZaK
