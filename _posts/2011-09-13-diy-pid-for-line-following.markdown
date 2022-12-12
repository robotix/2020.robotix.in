---
author: robotixiitkgp
comments: true
date: 2011-09-13T06:50:42.000Z
layout: post
slug: diy-pid-for-line-following
title: 'DIY : PID For Line Following'
wordpress_id: 234
categories:
  - The Do It Yourself Series
---

At slower speeds, line following is pretty simple - if the sensors say it is going left, steer right and if going right, steer left. This process has its limitations though, mainly when the speed is increased.  This is when a PID controller starts to shine.

**PID** stands for** Proportional, Integral and Derivative**.  A **PID **controller is a mathematics based procedure that processes sensor data and uses it to control the direction (and/ or speed) of a robot to keep it on course. Why does **PID **work better than our simple model described above? Let's talk about how robot acts (or behaves) as it follows a line to see why.

**Behaviour of a line follower**

Let's say our robot has 3 sensors- Left, Centre and Right. When the Centre sensor sees the line, the robot is programmed to go straight. When the Left (Right) sensor sees the line, the robot is programmed to turn right (left). This will typically cause the robot the wobble back and forth over the line and if going too fast, it may lose control and stop following the line altogether.

**Before we go into how exactly PID works, here are some terms you need to know : **

**Error **- The difference between the target position and the measured position the Error.

**Proportional - **Measures how far your robot is away from the line.

**Integral **- Measures the accumulated **Error** over time.

**Derivative **- Measures the rate at which the robot is moving left-to-right or right-to-left.

The "Control" variable, which helps in precise motion of the bot is essentially a combination of the P, I and D elements with coefficients Kp, Kd and Ki,

[![]({{ site.baseurl }}/img/blog/2011/09/pid_1.png?w=217)]({{ site.baseurl }}/img/blog/2011/09/pid_1.png)

In order for your line follower to attain optimum performance, tuning is the most important last step to be followed :
- Kp = 1, Kd = Ki = 0. The goal is to get the robot to follow the line even if it is very wobbly
- Assign Kd = 1. Try increasing this value until you see lesser amount of wobbling
- Once the robot is fairly stable at following the line, assign a value of 0.5 to 1.0 to Ki .Since Integral is cumulative, the Ki value has a significant impact. You may end up adjusting it by .01 increments.
- Once the robot is following the line with good accuracy, you can increase the speed and see if it still is able to follow the line.

Keep in mind that you need not implement P, I and D. Only P or even PI could serve your purpose in which case don't complicate the system further.
