---
author: rbtxadmin
comments: false
date: 2012-10-23T16:36:40.000Z
layout: post
slug: brilliant-little-jumping-robot-only-needs-one-motor
title: 'Brilliant Little Jumping Robot Only Needs One Motor '
wordpress_id: 426
categories:
  - Around the World
---

![](http://spectrum.ieee.org/image/1869270)

Jumping offers a way for very small robots to get over very large obstacles using a minimal amount of energy. It's tricky, though, because while the first jump might be pretty easy, subsequent jumps depend on the ability of the robot to right itself, aim, and go again. That's essentially three separate subsystems, but since you're only ever using one at a time, the risk is that your robot ends up being three times as bulky as is strictly necessary. And in small robots, efficiency is everything.

EPFL's locust-inspired jumping robot solves one of these problems with a weighted roll cage that helps the bot passively return to an upright position whenever it lands. A second motor then allows the robot to rotate within the cage to change its jumping direction. This works quite well, but it adds bulk plus another motor to the whole system.

Jianguo Zhao and a team from Michigan State University have created a jumping robot that somehow manages to do everything that it needs to do with just one single motor. It can change its orientation, right itself, and then jump (really freakin' high) with one motor and some clever mechanical engineering. Check it out:

The actual jumping mechanism was directly inspired by the legs of a frog, but it's really the rest of the robot that's so cool. Everything is driven by one tiny pager motor, and here's how it works:
- To jump, the pager motor engages a gear which pulls the robot's body down towards its legs, slowly charging four torsional springs. The gearing and springs help keep the power requirements low without sacrificing jumping energy. When the springs are fully charged up, the gear trips a little lever, and the legs are released. _Boing!_
- After re-entry, the robot inevitably finds itself lying prone. By driving the pager motor backwards, the same gear that charges the springs instead spins against the ground without engaging anything, allowing the body of the robot to rotate to a new position.
- To get up, as the robot's body is pulled down towards its legs, little arms deploy outwards, driven by that same downward motion. These arms push the robot up into a standing position, and keep it there until liftoff.

It's efficient, too: the robot is 8 centimeters tall and only weighs 20 grams, including the motor and a 50 mAh battery, but it can make approximately **285** jumps without needing to be recharged.

The designers think that it should be possible to make the robot jump even higher and farther, and of course at some point they're going to want to stick some sensors on there or something to move it from just being awesome to being awesome and useful at the same time.

This robot was presented at [ICRA](http://staging.spectrum.ieee.org/tag/icra+2011) in a paper entitled "Development of a Controllable and Continuous Jumping Robot" by Jianguo Zhao, Ning Xi, Bingtuan Gao, Matt W. Mutka, and Li Xiao, all from Michigan State University.
