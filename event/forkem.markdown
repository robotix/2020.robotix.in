---
layout: post
title: "Fork 'Em"
subTitle: 'Semi Autonomous Event'
permalink: 'event/forkem/'
---

###Introduction

Time is money. Efficiency defines our lives, and in the future, menial work must be automated.

###Problem statement

Build a forklift based semi-autonomous robot that is capable of picking up blocks and placing them in the corresponding platform as quick as possible.

###USP

- RFID Tag Detection.
- Forklift mechanism.
- Obstacle Avoidance.
- Manual Traversal using Touchpad.

###Task

- The bot has to traverse manually using a TOUCHPAD ONLY. The control must be devoid of buttons, and the robot must move simply by swiping in a particular direction on a touchpad, similar to a laptop touchpad.
- There will be 5 cm blocks, each with a particular RFID tag that has to be read.
- The RFID tag will contain information as to which platform the block belongs to. (1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B)
- Initially all the blocks will be placed on a platform which does not correspond to its RFID tag.
- The bot has to move around the arena, while avoiding obstacles, and read the RFID tag on the blocks.
- All the four ‘A’ platforms (1A, 2A, 3A, 4A) are in the four corners of the arena and 2 cm above the ground, the ‘B’ platforms (1B, 2B, 3B, 4B) are also in the four corners and 10 cm above the ground level.
- After reading the RFID tag of a block, there must be an indication such as a sound or a certain LED light combination glowing up on the bot, to tell the user which platform that block belongs to.
- The user must then use the forklift mechanism to pick up that block and traverse the arena while avoiding obstacles to the corresponding platform and place the block on that platform.
- This continues for all the other blocks.
- The event ends when the user has placed all the blocks correctly on their corresponding platforms.
- The platform will be 10cm X 10cm.

###Arena

####Front

![]({{ site.baseurl }}/img/event/forkem/front.jpg){:class="img-responsive"}

####Isometric

![]({{ site.baseurl }}/img/event/forkem/isometric.jpg){:class="img-responsive"}

####Top

![]({{ site.baseurl }}/img/event/forkem/top.jpg){:class="img-responsive"}

###Rounds

####Round 1

- There will be 4 blocks, all corresponding to the ‘A’ platforms only.
- The round will be 3 mins.
- There are 2 timeouts and 1 restart allowed.

####Round 2

- There will be blocks corresponding to both ‘A’ and ‘B’ platforms to bring about the efficient usage of the forklift mechanism.
- The round will be for 5 mins.
- There are 3 timeouts and 1 restart allowed.

###Scoring

####Round 1

#####Positives

- Base score: 1000
- For each block picked up (given only once for each block): 100
- For successful RFID reading and correct indication of each block: 150
- For placing the block on the correct platform: 200
- Time bonus: time left in seconds.

#####Negatives

- For obstacle collisions (each time): -25
- For placing on incorrect platform: -200
- For incorrect RFID reading and indication: -100
- For dropping the block each time: -50
- Negative marks for each timeout: -50
- Negative marks for restart: -100

####Round 2

#####Positives

- Base score: 1000
- For each block picked up from lower platform (given only once for each block): 100
- For each block picked up from upper platform (given only once for each block): 150
- For successful RFID reading and indication of each block: 150
- For placing the block on the correct platform: 200
- Time bonus: time left in seconds

#####Negatives

- For obstacle collisions (each time): -25
- For placing on incorrect platform: -200
- For incorrect RFID reading and indication: -100
- For dropping the block each time: -50
- Negative marks for each timeout: -50
- Negative marks for restart: -100