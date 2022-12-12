---
author: rbtxadmin
comments: true
date: 2014-08-20T01:38:32.000Z
layout: post
slug: kraig-102-a-summary
title: 'KRAIG 102: A SUMMARY'
wordpress_id: 1425
categories:
  - K.R.A.I.G.
---

The second iteration of the KRAIG (Kharagpur Robotics and Artificial Intelligence Group) robotics introductory sessions, christened KRAIG 102 was organized by the Technology Robotix Society (TRS) yesterday in the evening in V1 seminar hall at 6:30 PM. Despite rains outside, students turned up in a respectable number to learn the basics of robotics. The main speakers for the session were Ruchita Kachhap and Harsheel Soin (3rd Year UG students) with ocassional inputs from Soumyadeep Mukherjee (4th Year UG Student).

The session began at about 6:45pm with the speakers asking for feedback regarding the previous session (KRAIG 101) and looking to clarify any doubts that might have crept in students' minds. Then began a recapitulation of the fundamentals of the previous session. The basic topic of the class was the building and controlling of a differential drive based robot.

For those who couldn't attend due to some reasons, or simply for the curious, here's a brief overview of what was taught in the class:

**MOTOR DIRECTION CONTROL**

A Basic DC motor has two terminals. It can rotate both in clockwise and anticlockwise directions, depending on the direction of potential difference between the two terminals. If both terminals are at equal potential, the motor doesn't move and it becomes quite difficult to move it manually too. This condition is known as breaking condition

When circuit is not completed between the two terminals of the motor, the motor does not oppose the motion of the shaft. So the shaft moves freely and can be turned using a hand, and this condition is called free run condition.

Truth Table for a 12V DC Motor :

<table cellpadding="0" width="643" cellspacing="0" border="0" >

<tbody >
<tr >

<td width="214" valign="top" >

**Potential at T1 wrt ground**

</td>

<td width="214" valign="top" >

**Potential at T2 wrt ground**

</td>

<td width="214" valign="top" >

**Direction of Rotation**

</td>
</tr>
<tr >

<td width="214" valign="top" >

12V

</td>

<td width="214" valign="top" >

0V

</td>

<td width="214" valign="top" >

(If) Clockwise

</td>
</tr>
<tr >

<td width="214" valign="top" >

0V

</td>

<td width="214" valign="top" >

12V

</td>

<td width="214" valign="top" >

(Then) Anticlockwise

</td>
</tr>
<tr >

<td width="214" valign="top" >

12V

</td>

<td width="214" valign="top" >

12V

</td>

<td width="214" valign="top" >

Breaking Condition

</td>
</tr>
<tr >

<td width="214" valign="top" >

0V

</td>

<td width="214" valign="top" >

0V

</td>

<td width="214" valign="top" >

Breaking Condition

</td> </tr> </tbody> </table> **SWITCHES**
- **DPDT:** DPDT stands for Double Pole Double Throw switch. It makes or breaks two connections at the same time, in two different directions. That is, it has six terminals in total, with the middle two terminals being able to connect to either the two upper terminals or two lower terminals at a time, but not both
- **Relay:** A relay is a five terminal device that works on the principle of electromagnetism. When given some potential difference across the two terminals of the electromagnet, the connection is made in one direction (NO) and broken in another (NC). It works as a single pole, double throw switch, but doesn't require manual tapping.
- [![Untitled]({{ site.baseurl }}/img/blog/2014/08/Untitled.png)]({{ site.baseurl }}/img/blog/2014/08/Untitled.png)
- **SPST: **An SPST which stands for single pole single throw is what a regular light switch is. It completes or breaks one connection at a time, that too only in a single direction. They are also known as push button switches.

**DIFFERENTIAL DRIVE MECHANICS**

A Differential drive consists of two motorized wheels that can spin in same or opposite directions, or can entirely be stopped. Thus forward backward movements along with turns can be achieved, and also it can be used perform a 360 degree turn while keeping static at the original position.

[![Untitled]({{ site.baseurl }}/img/blog/2014/08/Untitled1.png)]({{ site.baseurl }}/img/blog/2014/08/Untitled1.png)

**DIODES**

Diodes are semiconductor devices with very low resistance for flow of current in one direction and very high for flow of current in another, so it allows unidirectional flow of current only.  Ideally resistance is zero for one direction and infinite for the other.

[![Untitled]({{ site.baseurl }}/img/blog/2014/08/Untitled2.png)]({{ site.baseurl }}/img/blog/2014/08/Untitled2.png)

**CONTROL BOX FOR THE ROBOT**

The demonstrated control box consisted of 2 relays, two push button switches, power source along with the motor that needed to be controlled using the box. The robot controls were similar to the WSAD configuration used for playing PC games (W-forward, S-Backward, A-Strafe Left, D-Strafe Right). The speakers also drew the circuit line by line and explained everything clearly. The circuit diagram of the box was as follows:

[![Untitled]({{ site.baseurl }}/img/blog/2014/08/Untitled3.png)]({{ site.baseurl }}/img/blog/2014/08/Untitled3.png)

The final circuit that was to be used for controlling the robot for the robosoccer event was also shown. It looked like:

[![Untitled]({{ site.baseurl }}/img/blog/2014/08/Untitled4.png)]({{ site.baseurl }}/img/blog/2014/08/Untitled4.png)

This pretty much summed up the meeting. In the end, some of the inquisitive learners tried to clarify their doubts and members of TRS were happy doing that. The session ended at about 8:00PM and the audience departed, elated and fascinated.

Author: Siddharth Jha
