---
author: rbtxadmin
comments: true
date: 2013-01-09T19:57:53.000Z
layout: post
slug: diy-build-your-own-overhaul-bot
title: 'DIY: Build your own Overhaul Bot'
wordpress_id: 684
categories:
  - The Do It Yourself Series
---

# Problem Statement
Build a manually controlled robot capable of traversing over irregular terrains with deep gaps (crevasses) in between, by bridging them and saving victims stranded at the accident site. For more details on the event refer to our [website](http://robotix.in/events/event/overhaul).

# Required Material
<table align="center" > 
<tbody >
<tr >

<td >

Material

</td>

<td style="text-align: left;" >

Quantity

</td>
</tr>
<tr >

<td >Wheels
</td>

<td >4
</td>
</tr>
<tr >

<td >10 rpm high torque motor
</td>

<td >2
</td>
</tr>
<tr >

<td >30 rpm motor
</td>

<td >2
</td>
</tr>
<tr >

<td >60/100 rpm motor
</td>

<td >4
</td>
</tr>
<tr >

<td >Hook
</td>

<td >1
</td>
</tr>
<tr >

<td >Three way switches
</td>

<td >6
</td>
</tr>
</tbody>
</table>

In this DIY we will learn how to traverse on the terrains and make a picking mechanism along with dropping the victims in the safe zone.

This discussion has been divided in 4 parts:
- Locomotion
- Picking of Joints and victims
- Storing and dumping of Victims
- Control box

# Locomotion
For the locomotion, different drives can be used but  the most common drive mechanism is a Differential Drive. Its is the basic design of 4 DC Motors each connected to a wheel. However, it will be better. if you can use other better mechanisms for locomotion like Rocker Bogie mechanism, conveyor belts, and even springs for more stability while traversing the different terrains.

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3511-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3511.jpg) For detailed information on constructing a differential drive, you may check the video tutorial[ Differential Drive](http://www.youtube.com/watch?v=kFoGBIqIqoM).

## Picking up Joints and Victims
The primary goal of the robot is to lift the Bridging parts (Joints) and save the victims. Your robot should have a Flexible Gripper (for grasping) or an arm (for extension) attached with a hook that collects the Joints and places them into the missing track, and the same goes with the victims. You may consider using the following approach:

Robotic Arm & Hook Mechanism**:** The victims are kept on the base of the crevasses .In order to lift the victims, the robot should have an extension mechanism or a flexible arm to accomplish the required task. Think about using a hook to lift the bridging parts (Joints) and victims.

Your robot can have a flexible arm to lift victims kept at the base of the crevasse. The movement of the arm can be controlled either by using motors or by hydraulics (using liquid[ fluid power](http://en.wikipedia.org/wiki/Fluid_power) to do simple work)

A mechanical arm is [robotic](http://en.wikipedia.org/wiki/Robotic), with similar functions to a human [arm](http://en.wikipedia.org/wiki/Arm). The arms  are controlled by DC motors.The pictures below show a pretty good description of the working of this mechanism.

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3503-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3503.jpg)

We have used two 10 rpm motors in the robotic arm. The total length of the arm is around 40 cms, long enough to pick up the victims. A hook is attached at the end of the robotic arm to lift the Joints and the victims.

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3550-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3550.jpg)

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3563-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3563.jpg)

**Storing and Dumping of Victims:**

For storing the victims, a large space has been provided on the chassis. Once the robot is in safe zone, you can drop the victims in the safe zone at once. For this we have used a mechanism which uses two motors. One motor (60 rpm) opens a shutter at the back end of the chassis, while the other motor (30/60 rpm) controls a hand that pushes out the victims from the chassis onto the safe zone.

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3506-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3506.jpg)

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3565-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3565.jpg)

# Control Box
As we are using 5/6 motors we need 5/6 three way switches. ![](https://lh4.googleusercontent.com/qEDdIZF6jnijkh9GaZAFzsiZkD93fJ8g3EbzuhalFIzwsnUiYos3vzeBMQUmlpX2aP2mm04rWrsGPQhG1VjpoIXn8d017jCi6Pf_ITsUnbafiwDm0cc)

[![]({{ site.baseurl }}/img/blog/2013/01/DSC3559-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC3559.jpg)

The control box used in this robot

# Completed robot
[![]({{ site.baseurl }}/img/blog/2013/01/DSC35031-1024x678.jpg)]({{ site.baseurl }}/img/blog/2013/01/DSC35031.jpg)

**Refer to the [video tutorial](http://www.youtube.com/watch?v=Q_pIKhwH2OM) for more details.**

** **
