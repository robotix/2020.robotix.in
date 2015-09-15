---
author: rbtxadmin
comments: true
date: 2011-08-20T21:19:31.000Z
layout: post
slug: do-it-yourself-pid
title: 'Do It Yourself : PID '
wordpress_id: 151
categories:
  - The Do It Yourself Series
---

**![](https://www.robotix.in/img/blog/2011/08/PID_picture-217x300.png)**

The simplest example to understand PID is a [Line Follower](http://en.wikipedia.org/wiki/Mobile_robot#Line-following_robot), which we shall consider here.

At slower speeds, line following is pretty simple - if the sensors say it is going left, steer right and if going right, steer left. This process has its limitations though, mainly when the speed is increased.  This is when a PID controller starts to shine.

**PID** stands for** Proportional, Integral and Derivative**.  A **PID **controller is a mathematics based procedure that processes sensor data and uses it to control the direction (and/ or speed) of a robot to keep it on course. Why does **PID **work better than our simple model described above? Let's talk about how robot acts (or behaves) as it follows a line to see why.

**Behaviour of a line follower**

Let's say our robot has 3 sensors- Left, Centre and Right. When the Centre sensor sees the line, the robot is programmed to go straight. When the Left (Right) sensor sees the line, the robot is programmed to turn right (left). This will typically cause the robot the wobble back and forth over the line and if going too fast, it may lose control and stop following the line altogether.

**Before we go into how exactly PID works, here are some terms you need to know : **

**Error **- The difference between the target position and the measured position the Error.

**Proportional - **Measures how far your robot is away from the line.

**Integral **- Measures the accumulated **Error** over time.

**Derivative **- Measures the rate at which the robot is moving left-to-right or right-to-left.

The "Control" variable, which helps in precise motion of the bot is essentially a combination of the P, I and D elements with coefficients Kp, Kd and Ki. Thus, the input into the motors are according to the total error calculated from P, I and D values.

In order for your line follower to attain optimum performance, tuning is the most important last step to be followed :
- **Kp** = 1, **Kd** = **Ki** = 0. The goal is to get the robot to follow the line even if it is very wobbly
- Assign** Kd** = 1. Try increasing this value until you see lesser amount of wobbling
- Once the robot is fairly stable at following the line, assign a value of 0.5 to 1.0 to **K****i** .Since Integral is cumulative, the **Ki** value has a significant impact. You may end up adjusting it by .01 increments.
- Once the robot is following the line with good accuracy, you can increase the speed and see if it still is able to follow the line

Keep in mind that you need not implement P, I and D. Only P or even PI could serve your purpose in which case don't complicate the system further.
