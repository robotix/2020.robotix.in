---
author: rbtxadmin
comments: true
date: 2013-09-14T15:56:30.000Z
layout: post
slug: line-follower-without-uc
title: Line Follower without Microcontroller
wordpress_id: 1001
categories:
  - The DIY Series
---

In this tutorial, we'll make a simple line follower which follows a white line on a black surface or vice-versa using simple basic components.

**Things Required:**
1. Sensor pairs (either LED-LDR or IR LED-Photodiode) (2)
1. 10k Ohm Potentiometers (4)
1. 1k Ohm resistors (4)
1. LM358N dual amplifier IC (1)
1. BC547 npn BJT (2)
1. B557 pnp BJT (2)
1. Flyback diodes (2)
1. 8 pin IC base for your LM358
1. PCB, relimates
1. A differential drive chasis

We'll be basically dealing with two circuits here.

i) Sensor Circuit

 ii) Comparator-bjt circuit

**Sensor Circuit**

The sensor circuit will basically tell you whether your robot is on the line or out of line. The sensors suitable for this purpose are LED-LDR sensor, or IR LED-Photodiode sensor pair.

Click [here]({{ site.baseurl }}/tutorials/category/kraig/1.2) to understand the basics of these sensor pairs.

Now, let us see how it'll help to differentiate the line from the surface. We know the fact that a white surface will anytime reflect more rays than a black surface. This is the basic principle that we use to judge whether the sensor pair is on white line or black line.

Consider this LED-LDR sensor pair.

![](http://learning.media.mit.edu/projects/gogo/documents/images/light_reflective_LED_LDR.jpg)

Now, when this sensor pair is on a white line,

=> more led light reflected by the surface

=> more light falls on LDR

=> lesser LDR resistance

=> the voltage across LDR will be less

Similarly, when the sensor pair is on a black line,

 => the voltage across LDR will be high.

Similarly,  for the IR LED-Photodiode sensor pair,

[![sensor]({{ site.baseurl }}/img/blog/2013/09/sensor.jpg)]({{ site.baseurl }}/img/blog/2013/09/sensor.jpg)

The voltage across the IR Photodiode will vary as per the intensity of light falling on it.

More the reflected light, lesser the voltage across ir receiver.

Here is your sensor circuit:

[![sensor]({{ site.baseurl }}/img/blog/2013/09/sensor.png)]({{ site.baseurl }}/img/blog/2013/09/sensor.png)

The 10k component is your potentiometer which you might have to set to the maximum range. This resistance, ideally should be near ( R(light) * R(dark) )^1/2 where, R(light) is the approximate resistance of LDR during light and R(dark) is the resistance of the same in dark.

**Comparator Circuit**

Now for analysing the sensor output, we use a comparator to get a digital output.

Click [here]({{ site.baseurl }}/tutorials/category/kraig/1.2) to understand the basics of comparators.

[![op amp ckt]({{ site.baseurl }}/img/blog/2013/09/op-amp-ckt.png)]({{ site.baseurl }}/img/blog/2013/09/op-amp-ckt.png)

Now, the LED-LDR is connected to a comparator LM358. LM358 is an operational amplifier IC which is being used as a comparator. The non inverting terminal of op-amp (The + terminal) reads the voltage across resistor R4. And, the inverting terminal of op-amp (The - terminal) reads the voltage that has been set at the potentiometer.

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

Now, how do we implement this on our line follower?

In this tutorial, we'll be making a 2 sensor line follower which will be working as - ![](https://lh5.googleusercontent.com/zfYodcIU0p_agqyGhRL8KhCHwcPRy0UCw_B8Nc9Nqe30JjqVS-K5gsr1uIhjW7QCZzG409tO_7esb3mIhIzWCaC83fw7OtA7eY4qu6CEWaIyDgw8zf_RUns7)

For the turns, we have one motor stalled and other running.

Here is the complete line follower circuit:![](https://lh5.googleusercontent.com/H7NXjDC9gyNnMQkHY4Q4IEtI78DaM_vdlgoOR_PRmg7_AjtbrLHxjS6BZcMbg29gAKyVwq38-qA83vBJXeC_26gyfFme35MFDAvoeOpLbAtU_SvZCDQgs_ZB)

Here, we have both the sensor and the op-amp circuit at 12 V Vcc . That is why, the resistances attached with led and ldr as as high as 1k and 10k respectively.

You can observe the components, BC547, B557. These are transistors called the Bi-polar Junction transistors This is to increase the amount of current coming from the output of the op amp so as to fulfill the current requirements of the DC motor and also to ensure either high or low voltages at any point of time during the run. Hence, the BJTs ensure no floating voltage at any point of time. This set up of NPN and PNP transistors is known as push-pull circuit.

And the diode across the motor is a flyback diode to prevent reverse current.

Here are the actual images of circuits and robot:

.![](https://lh4.googleusercontent.com/jxjhp1PiCIgwMtBZan9maY-W6ZsAhxIOXfDPsPJOPFfh3_9rKYtEEwSPghnfkWu6b8H0TyA85ctsTMvVkLaaE2W_gjz1LnIRUD730fueKB7lTJ_jULQvFCnD)

Sensor circuit, which was attached to the lower part of the chasis.

![](https://lh4.googleusercontent.com/vc6ATGQY7awOeF87-inG_87A8OQGXJJ_RKklaE22kZJp1yUIS9EyIWY_NBWcYBiBLxYb9KYOmgkte8-xWloCztYh6m-bkRi1m1-lu7rIXM8VA_6lRFf4wv68)

Op-amp circuit whose output is forwarded to the bjt circuit

![](https://lh3.googleusercontent.com/hEiNOT7FM3_Yd3_Jdb0GpA35IbGjTI7G0f4iPq4Bl8rHm8OqrnZFC2kp24rMvrj7M0rw1SSKX7e9N1GWuYFSN9pBOAVzKlsk8VQXLY0izBWHOxw0noxqCXDf)

BJT circuit.

![](https://lh5.googleusercontent.com/edBlJrjfbW7IyJVrDQSvQ3SWhY9PlC-KioxenOhUpkYT8uT6FWWyoQ2SO8ZwjY_Jy711NYA6wVmKaH6DK2n8YTCh766AyENkvc_PYWJE9H2toIN3CjeBVZaK)

Assembled bot.
