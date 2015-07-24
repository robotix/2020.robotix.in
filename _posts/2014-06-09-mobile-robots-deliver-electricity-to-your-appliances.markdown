---
author: rbtxadmin
comments: true
date: 2014-06-09T07:20:10.000Z
layout: post
slug: mobile-robots-deliver-electricity-to-your-appliances
title: Mobile Robots Deliver Electricity to Your Appliances
wordpress_id: 1395
categories:
  - Around the World
---

Having to plug things into wall outlets is a recurring irritation of modern life. There are never enough of them, they're never where you need them to be, and when you do plug into one, you end up with tangles of cords strewn all over the floor.

Now Japanese researchers might have a solution, and it involves robots (of course). Their idea is to use autonomous mobile robots that deliver electricity to battery packs with outlets attached anywhere around the house, and they've built a proof-of-concept system to show how it would work.

This is just an experiment at this point, and it is in no way optimized for electricity storage or delivery. The researchers, from the University of Tokyo and Keio University and led by Professor Takeo Igarashi, hacked a Roomba and some charging docks to work as their electricity-delivery system.

Instead of vacuuming, the Roomba simply drives around looking for any charging docks. The researchers modified these docks by attaching a battery pack, an inverter, and other electronics to them [see schematics below]. When the Roomba attaches to a dock, it transfers energy from its own battery over to the dock's battery pack. And once the Roomba detects that its battery is depleted, it returns to a regular (unmodified) dock to recharge.

![](http://spectrum.ieee.org/img/robot_batt-1402071189032.jpg) Image: IGARASHI Design Interface ProjectAs the system gets refined, it might benefit from (say) something like a supercapacitor that could transfer electricity faster, or a dedicated mobile platform. Or on the other hand, sticking with the Roomba means that you could have a robot keeping your house clean _and_ keeping your stuff charged.

The researchers experimented with a variety of different charging strategies, which the user can select for each appliance (or each dock location) through Wi-Fi and an app.

There's the "greedy" strategy, where the robot delivers as much power as it can whenever it can, which works best for sporadically used, high-drain devices. The "optimistic" strategy delivers power to appliances when they're running low, which works for low-power devices that remain operating for long periods, like fans or floor lamps.

And the robot can also deliver power on a schedule that you set, which is ideal for electronics that you only use at certain times during the day (say, a music player), or if you want to make sure that the robot isn't roaming around under your feet when you're at home.

It's easy to imagine how this concept could be more tightly integrated into a home environment. Perhaps something like a coffee table could include a robot dock and battery, with available outlets for you to plug your gadgets into to charge them.

And if you add a short-range wireless charging system, this coffee table would charge your devices whenever you set anything down, with no wires anywhere to be seen.

"Delivering Electricity to Home Appliances by Mobile Robots," by Kentaro Ishii, Youichi Kamiyama, Wirawit Chaochaisit, Masahiko Inami, and Takeo Igarashi, from the University of Tokyo and Keio University, was presented this week at ICRA 2014 in Hong Kong. The research was part of Japan Science and Technology Agency's ERATO/IGARASHI Design Interface Project.
