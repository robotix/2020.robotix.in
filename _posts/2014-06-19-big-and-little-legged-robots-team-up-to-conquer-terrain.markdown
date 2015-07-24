---
author: rbtxadmin
comments: true
date: 2014-06-19T04:46:37.000Z
layout: post
slug: big-and-little-legged-robots-team-up-to-conquer-terrain
title: Big and Little Legged Robots Team Up to Conquer Terrain
wordpress_id: 1402
categories:
  - Around the World
---

![](http://spectrum.ieee.org/img/starleth-1402484090211.jpg)

Humans, robots, and anything else with legs can have issues with navigating terrain that's rough, sticky, or slippery. Navigating dangerous terrain like this isn't necessarily a problem, as long as there's a little bit of advanced warning. Imagine the difference between walking out onto an icy sidewalk that you _are _expecting, as opposed to walking out onto an icy sidewalk that you're _not _expecting.

The tricky thing is that "expecting" bit: short of actually stepping on a surface, how do you know what to expect? A robot can try relying on sensors to identify and avoid slippery terrain, but researchers from UC Berkeley and ETH Zurich came up with another effective strategy, which they presented last week at the IEEE International Conference on Robotics and Automation (ICRA).

The strategy consists in using teams of robots and sending some of them ahead of the others, to see if they slip and fall. This approach can get expensive, unless you use a heterogeneous team: one big expensive robot that you care about, with a bunch of little cheap robots that you don't, acting as a picket line of terrain scouts. Here's a video demonstrating the concept:

You might recognize both of the robots in this video: the big one is ETH Zurich's StarlETH quadruped, while the little one is VelociRoACH, from UC Berkeley. VelociRoACH's job is to scurry around ahead of StarlETH, exploring the terrain. StarlETH watches the optical tag on VelociRoACH's back to see how the little robot is doing, and VelociRoACH also sends back IMU data.

Together, the robots are able to classify terrain as either slippery or safe to walk on with an accuracy of over 90 percent, and since StarlETH is able to localize VelociRoACH as it scampers around, StarlETH knows exactly where it is (or isn't) safe to step.

The risk here is that your poor little scout robot might end up stumbling onto a piece of terrain that's so dangerous that it gets stuck. This is better than your_primary robot_ getting stuck (and the scout robot is still accomplishing what it was intended to accomplish by warning the primary robot of the danger), but you need to be prepared to consider these scout robots as expendable, which is why VelociRoACH is the robot of choice, as it's made mostly of cardboard, and you can just toss a bunch more into the mix to replace any robots that you may lose.

While the video above shows a demo with just one scout robot, using multiple robots would be even more effective. And since they're cheap, there's no reason not to use lots of them. Future work will experiment with formations of picket robots to more effectively map larger areas of potentially hazardous terrain.

Oh, and the most potentially hazardous terrain of all? Right underneath the foot of StarlETH, at least as far as VelociRoACH is concerned.

Luckily, VelociRoACH isn't just cheap, it's also durable, as lead author Duncan Haldane told us: "After VelociRoACH got stepped on, we just pulled it out and kept running it. No problems."

"Detection of Slippery Terrain with a Heterogeneous Team of Legged Robots," by Duncan W. Haldane, Peter Fankhauser, Roland Siegwart, and Ronald S. Fearing, from UC Berkeley and ETH Zurich, was presented at ICRA 2014 in Hong Kong.
