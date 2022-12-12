---
author: robotixiitkgp
comments: true
date: 2011-09-13T05:39:06.000Z
layout: post
slug: diy-working-with-servos
title: 'DIY : Working With Servos'
wordpress_id: 232
categories:
  - The Do It Yourself Series
---

[![]({{ site.baseurl }}/img/blog/2011/09/servo_1.jpg)]({{ site.baseurl }}/img/blog/2011/09/servo_1.jpg) Most of us have used DC motors at one point or another. They follow pretty simple rules like speed is directly proportional to voltage and reversing terminals mean reversing the direction of motion. As we move forward from a simple differential drive our actuator requirements also change. This post is to familiarize beginners with servos- a type of electromagnetic actuators that do not rotate continuously like DC motors rather are used to position some object .Servo Motors were extensively used in the events Ballista and The Fugitives at ROBOTIX 2011. Servos prove better then stepper motors because the employ a feedback mechanism. A servo has three wires coming out of it one for positive supply(red), the other for ground(black) and the last one for control (usually yellow or white).The positive wire is attached to a power supply of 4.8V to 6V. The various Hi Tech servos and their specifications are given [here](http://www.hobbyhorse.com/servo_specs.shtml).

A servo motor only rotates 180 degree and has to be lobotomized if it is required to rotate continuously or to a higher angle. Here we shall talk only about non lobotomized servo. Controlling a servo is easy by using a microcontroller; no motor driver circuit is required. Just a control signal is needed to be feed to the servo to position it in any specified angle. The frequency of the control signal is 50 Hz and the width of positive pulse controls the angle (Pulse width modulation). 20ms time period corresponds to 50HZ.

<table width="700px" >

<tbody >
<tr >

<td width="250px" >[![]({{ site.baseurl }}/img/blog/2011/09/servo_2.png?w=)]({{ site.baseurl }}/img/blog/2011/09/servo_2.png)
</td>

<td width="100px" >
</td>

<td width="350px" >[![]({{ site.baseurl }}/img/blog/2011/09/servo_3.jpg?w=300)]({{ site.baseurl }}/img/blog/2011/09/servo_3.jpg) </td> </tr> </tbody> </table> The voltage is fed directly from the power supply (Rectifier circuit/adapter/battery). The control signal has to be fed a PWM. We can use the AVR micro controllers PWM feature to control servo motors. In this way the PWM with automatically generate signals to lock servo and the CPU is free to do other tasks.
