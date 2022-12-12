---
author: rbtxadmin
comments: true
date: 2014-05-25T07:29:17.000Z
layout: post
slug: quadrotor-uses-googles-project-tango-to-fly-autonomously
title: "Quadrotor Uses Google's Project Tango to Fly Autonomously"
wordpress_id: 1383
categories:
  - Around the World
---

[![upenn-quadrotor-project-tango-1400704200345]({{ site.baseurl }}/img/blog/2014/05/upenn-quadrotor-project-tango-1400704200345.png)]({{ site.baseurl }}/img/blog/2014/05/upenn-quadrotor-project-tango-1400704200345.png)

Early this year, Google unveiled its Project Tango smartphone, a mobile device equipped with a depth sensor, a motion tracking camera, and two vision processors that let the phone track its position in space and create 3D maps in real time. The device is particularly useful for robots, which have to navigate and locate themselves in the world. Indeed, a video showed how Google and its partners were putting the smartphone on different kinds of robots, including mobile platforms and manipulator arms.

Now researchers at the University of Pennsylvania led by Professor Vijay Kumar are taking things one step further. After getting a Tango device from Google, they put it on one of their quadrotors and let it loose inside their lab.

Kumar says that a big challenge for researchers working with flying robots is not building them but rather developing hardware and software capable of making them autonomous. Many robots use GPS for guiding themselves, or, when flying indoors, they rely on motion tracking systems like Vicon and OptiTrack, which offer great accuracy but requires that you install sensors on walls and ceilings.

A device capable of localizing itself in space without GPS or external sensors, as the Tango phone does, opens new possibilities for flying robots. Kumar says that the Google device is remarkable because it lets you "literally velcro it to a robot and have it be autonomous."

Giuseppe Loianno, a PhD student in Kumar's group, has made a video showing their initial tests with the device. In the first part of the video, Loianno sets the quadrotor to hover at a fixed position and then perturbs it by moving it around, but the drone promptly returns to the starting point. Next Loianno commands the drone to go to different places in the room and, even if disturbed, the drone recovers and stays on its programmed path.

Kumar says the only measurement from the Tango phone is its pose, which is the position plus orientation with reference to a starting coordinate system (captured at a rate of 30 Hz), and the only other sensor used is the IMU onboard the drone. (The laptop is not controlling flight autonomy in any way; it's only used to send a desired trajectory to the drone and to render a visualization of the its positions in space. And the quadrotor is a machine that Kumar's group designed and built with off-the-shelf components.)

The researchers now plan to study Tango's accuracy of localization (and compare it to external motion tracking systems), but from their initial tests they estimate the accuracy to be within a centimeter. If that proves to be the case (and if Tango can be made cheap enough), it will be an impressive capability for the Google device, which could revolutionize how mobile robots and drones navigate indoor spaces.

Kumar says that the convergence of computation, communication, and consumers has a huge potential for the robotics industry, and a device like Tango is a key advance because it's "lowering the barrier to entry for autonomous robots."
