---
comments: true
date: 2015-06-14T12:36:13.000Z
layout: post
slug: new-control-algorithm-lets-quadcopters-keep-flying-on-three-or-less-propellers
title: New control algorithm lets quadcopters keep flying on three or less propellers
wordpress_id: 1516
categories:
  - Around the World
---

Whether it's for Amazon-purchased goods, text books or defibrillators, unmanned multicopters are increasingly being considered for use as delivery vehicles. Given that this would involve their flying over heavily-populated areas, however, many people are rightly concerned about the aircraft malfunctioning and crashing down onto someone below. That's why researchers at ETH Zurich have created a control algorithm that allows any quadcopter to keep flying, even if it loses multiple motors or propellers.

[![The New Algorithm would allow for successful Tri-Copters]({{ site.baseurl }}/img/blog/2015/06/broken-1024x680.jpg){:class="img-responsive"}]({{ site.baseurl }}/img/blog/2015/06/broken.jpg) The New Algorithm would allow for successful Tri-Copters

Because of the risk of crashes, most of the currently-proposed delivery drones are hexa- or octocopters. With their six or eight motors/propellers, they're already able to remain airborne if one of those should konk out. With all of that extra hardware, however, they're also larger, heavier, more complex, and thus less efficient than quadcopters.

The ETH algorithm can be added to the control system of existing quadcopters, and requires no physical changes or additions to the aircraft.

When the software detects that one or more of the propellers has stopped working – either because it's come off, or due to motor failure – it initially uses the remaining props to put the drone in a hovering horizontal spin. Then, by selectively altering the thrust of each propeller, it steers the quadcopter by tilting the angle of its rotation, and eases it down to a controlled landing.

The algorithm reportedly works even if only _one_ prop is operational. A quadcopter using the technology to land on three propellers can be seen in the video below.

Source: [ETH Zurich](https://www.ethz.ch/en/news-and-events/eth-news/news/2013/12/new-algorithm-makes-quadrocopters-safer.html)
