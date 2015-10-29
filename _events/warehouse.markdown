---
layout: post
title: "Warehouse"
subTitle: 'Semi Autonomous Event'
logo: /img/event/warehouse/logo.jpg
social:
  - {name: "facebook", link: ""}
excerpt_separator: <!--more-->
---


###Introduction
Even after modernization, the one thing that still ails industries is efficient storage in adverse conditions. Consider a storage that handles tonnes of toxic but useful industrial material, thus being human-inaccessible but economically very important. Hence everything must be sorted and always readily available. That’s where robots come in, with the event Warehouse, the entire scenario is brought to life. The challenge of building a semi autonomous robot capable of identifying items and sorting them in storage, while being gesture controlled, is yours to overcome.
<!--more-->

###Problem statement

Build a gesture controlled semi-autonomous robot that is capable of sorting blocks on multi-layered platforms according to their RFID tags.

###USP

- RFID Tag Detection.
- Picking Mechanism.
- Gesture Controlled Traversal.

###Task

- The bot traversal has to be a manual, gesture controlled (buttonless control), preferably using a Touchpad. The control must be devoid of any buttons, and the robot must move simply according to the gesture 
- There will be 5 cm blocks, each with a particular RFID tag that has to be read.
- The blocks are initially arranged either on a two-tiered platform in the centre or on incorrect shelves. The platform consists of three parts. There are two lower platforms which are 1 cm above ground level each and 18 cm X 6 cm in dimension each. The middle raised platform is at a height of 10 cm above ground level and 18 cm X 12 cm as well. The shelves are on the four corners of the arena. They are also two-tiered. The lower shelf is called ‘A’ and it is 1 cm above ground level. The upper shelf is called ‘B’ and it is 10 cm above ground level. Depending on the corner, they are named 1A, 1B, 2A, 2B, 3A, 3B and 4A, 4B. Each shelf is 10 cm X 10 cm.
- The bot must have a gripping mechanism which is capable of accessing both the levels. (Preferably a forklift).
- The blocks will have two thin wooden strips beneath it on the two opposite sides which will be of 0.5 cm by 1 cm cross-section and the same length as the block. This will create and vacant space of 4 cm by 1 cm beneath the block for the forks of the forklift to enter.
- The RFID tag on each block will contain information as to which shelf the block belongs to among 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B.
- The bot has to lift/pick a particular block and read the RFID tag.
- After reading the RFID tag of a block, there must be an indication such as a sound or a certain LED light combination glowing up on the bot or a display, to tell the user which shelf that block belongs to.
- Some blocks on the centre platform might have RFID tags that do not correspond to any shelf and are to be ignored.
- The blocks pre-placed on the incorrect shelves may correspond to a different shelf and must be taken to that shelf or it may not correspond to any shelf at all, in which case they must be picked from the shelf and placed anywhere on the two-tiered platform in the centre of the arena.
- The user must use the picking mechanism, to pick up that block and traverse the arena to the corresponding shelf and place the block on that shelf.
- This continues for all the other blocks.
- Two of the corners will have shelves with gates.
- The button must be activated to open the gates of the corresponding shelf.
- On activating a certain button, the shelf’s gate opens and the user can interact with the shelf and the blocks on it/to be places there.
- The user must activate the button again to close the gate of the shelf.
- The event ends when the user has placed all the blocks correctly on their corresponding shelves and leaving those blocks which do not correspond to any shelf on the central platform. All the gates must also be closed.


###Arena

####Front

![]({{ site.baseurl }}/img/event/warehouse/1.jpg){:class="img-responsive"}

####Isometric

![]({{ site.baseurl }}/img/event/warehouse/2.jpg){:class="img-responsive"}

####Side

![]({{ site.baseurl }}/img/event/warehouse/3.jpg){:class="img-responsive"}

####Top

![]({{ site.baseurl }}/img/event/warehouse/4.jpg){:class="img-responsive"}

###Block

###Isometric

![]({{ site.baseurl }}/img/event/warehouse/5.jpg){:class="img-responsive"}

####Front

![]({{ site.baseurl }}/img/event/warehouse/6.jpg){:class="img-responsive"}

###Rounds

####Round 1

- There will be 6 blocks, 4 of which will correspond to the ‘A’ platforms only and the other 2 are to be ignored.
- The round will be 3 mins.
- There are 1 timeouts and 1 restart allowed.

####Round 2

- There will be 10 blocks, 7 of which will corresponding to either ‘A’ or ‘B’ platforms and the other 3 are to be ignored.
- The round will be for 5 mins.
- There are 2 timeouts and 1 restart allowed.

###Scoring

####Round 1

#####Positives

- Base score: 1000
- For each block picked up from ground level(given only once for each block): 100 (L)
- For successful RFID reading and correct indication of each block: 150 (S)
- For placing the block on the correct platform: 100 (P)
- Time bonus: time left in seconds (B)

#####Negatives

- For incorrect RFID reading and indication: -100 (NS)
- For placing block on an incorrect platform: -50 (NP)
- For dropping the block each time: -50 (D)
- Collision with the walls: -50 (W)
- Negative marks for each timeout: -150 (T)
- Negative marks for restart: -250 (R)


####Scoring Formula 
1000 + 100*L + 150*S + 100*P + B - 50*(NP + D + W) - 100*NS - 150*T - 250*R

####Round 2

#####Positives

- Base score: 1000
- For each block picked up from lower platform (given only once for each block): 100 (L)
- For each block picked up from upper platform (given only once for each block): 150 (U)
- For successful RFID reading and indication of each block: 150 (S)
- For placing the block on the correct platform: 100 (P)
- Time bonus: time left in seconds (B)

#####Negatives

- For incorrect RFID reading and indication: -100 (NS)
- For placing block on an incorrect platform: -50 (NP)
- For dropping the block each time: -50 (D)
- Collision with the walls: -50 (W)
- Negative marks for each timeout: -150 (T)
- Negative marks for restart: -250 (R)

####Scoring Formula
1000 + 100*L + 150*(U+S) + 100*P + B - 50*(NP + D + W) - 100*NS - 150*T - 250*R

###Contact

####Shashwat Gupta
**(91) 7278275550**  
**shashwat@robotix.in**