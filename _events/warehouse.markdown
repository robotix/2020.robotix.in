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

Time is money, efficiency defines our lives, yet menial work is a necessary evil. What if all menial work could be completed by a literal flick of your wrist or snap of your fingers?

###Problem statement

Build a gesture controlled semi-autonomous robot that is capable of sorting blocks on multi-layered platforms according to their RFID tags.

###USP

* **RFID Tag Detection.**

* **Picking mechanism.**

* **Gesture Controlled Traversal.**

###Task

* The bot **traversal has to be a manual, gesture controlled (buttonless control), preferably using a Touchpad**. The control must be devoid of any buttons, and the robot must move simply according to the gesture 

* There will be **5 cm blocks**, each with a particular **RFID tag** that has to be read.

* The blocks are initially arranged either on a **two-tiered platform** in the centre **or on incorrect shelves**. The platform consists of **three** parts. There are two lower platforms which are **1 cm** above ground level each and **50 cm X 10 cm** in dimension each. The middle raised platform is at a height of **10 cm** above ground level and **50 cm X 30 cm**. The **shelves** are on the **four corners** of the arena. They are also **two-tiered**. The lower shelf is called **‘A’** and it is **1 cm** above ground level. The upper shelf is called **‘B’** and it is **12 cm** above ground level. Depending on the corner, they are named 1A, 1B, 2A, 2B, 3A, 3B and 4A, 4B. Each shelf is **20 cm X 20 cm**.

* The bot must have a gripping mechanism which is capable of accessing both the levels. (Preferably a forklift).

* The blocks will have two thin wooden strips beneath it (Like a railway track) which will be of **0.5 cm wide and 1 cm high** in cross-section and the same length as the block (5 cm). This will create a vacant space of **4 cm X 1 cm** beneath the block. This has been done to allow bots using forklift mechanism to be able to pick the blocks from beneath. The fork of the forklift can enter this gap and pick the block.

* The **RFID tag on each block will contain information as to which shelf the block belongs to** among 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B.

* The bot has to **lift/pick** a particular block and **read the RFID tag.**

* After **reading the RFID tag** of a block, there must be an **indication system implemented by the user on the bot** such as a sound or a certain LED light combination glowing up on the bot or a display, to tell the user which shelf that block belongs to.

* Some blocks on the centre platform might have **RFID tags that do not correspond to any shelf **and are to be ignored.

* The blocks **pre-placed on the incorrect shelves** may correspond to a different shelf and must be taken to that shelf or it may not correspond to any shelf at all, in which case they must be picked from the shelf and placed anywhere on the two-tiered platform in the centre of the arena.

* The user must use the picking mechanism, to pick up that block and traverse the arena to the corresponding shelf and place the block on that shelf.

* On the corner edge of every shelf there will be a **15 cm X 15 cm square safe zone**. While placing the block on any shelf the bot must ensure that the** block is kept within the safe zone** itself.

* This continues for all the other blocks.

* **Two** of the **corners** will have **shelves with gates.**

* The gates open when their **corresponding Infra-Red button is activated.** The button is located on the **ground 10 cm away from the arena border and midway between two adjacent shelves.**

* The button consists of a Infra Red proximity based sensor. It is activated when the bot stops in front of it for **3 seconds.** Once activated, the corresponding gates of the both shelves of the corresponding corner are opened for a total of **30 seconds** each. The bot must pick/drop the block in that duration and **should not touch the gates** at any time.

* The **30 second timer can be reset** back to 30 seconds if the bot goes and stops before the button for another **2 seconds within that 30 second countdown**. If the timer is not reset then the gates will close after 30 seconds and the bot must move away. The gate can be reopened after it has been closed by activating the button.

* The event ends when the user has placed **all the blocks correctly** on their corresponding shelves and leaving those blocks which do not correspond to any shelf on the central platform. All the gates must also be closed.

* The total arena is  **200 cm X 200 cm**

###Arena

![]({{ site.baseurl }}/img/event/warehouse/image_0.png){:class="img-responsive"}

**Isometric:**

![]({{ site.baseurl }}/img/event/warehouse/image_1.png){:class="img-responsive"}

**Top:**

![]({{ site.baseurl }}/img/event/warehouse/image_2.png){:class="img-responsive"}

**Side:**

![]({{ site.baseurl }}/img/event/warehouse/image_3.png){:class="img-responsive"}

####Gate Open and Closed Profiles

![]({{ site.baseurl }}/img/event/warehouse/image_4.png){:class="img-responsive"}

####Block

**Isometric:**

![]({{ site.baseurl }}/img/event/warehouse/image_5.png){:class="img-responsive"}

**Front:**

![]({{ site.baseurl }}/img/event/warehouse/image_6.png){:class="img-responsive"}

###Rounds

####Round 1

* There will be 6 blocks, 4 of which will correspond to the ‘A’ platforms only and the other 2 are to be ignored.

* The round will be for 3 mins.

* There are 1 timeouts and 1 restart allowed.

####Round 2

* There will be 10 blocks, 7 of which will corresponding to either ‘A’ or ‘B’ platforms and the other 3 are to be ignored.

* The round will be for 5 mins.

* There are 2 timeouts and 1 restart allowed.

###Scoring

####Round 1

**Positives**

1. Base score: 1000

2. For each block picked up from ground level (given only once for each block): 100 (**L**)

3. For successful RFID reading and correct indication of each block: 150 (**S**)

4. For placing the block on the correct platform: 100 (**P**)

5. Time bonus: time left in seconds (**B**)

**Negatives**

1. For incorrect RFID reading and indication: -100 (**NS**)

2. For placing block on an incorrect platform: -50 (**NP)**

3. For dropping the block each time: -50 (**D**)

4. Collision with the walls each time: -50 (**W**)

5. Collision with the gates each time: -50 (**G**)

6. Negative marks for each timeout: -150 (**T**)

7. Negative marks for restart: -250 (**R**)

####Scoring Formula

1000 + 100*L + 150*S + 100*P + B - 50*(NP + D + W+G) - 100*NS - 150*T - 250*R

####Round 2

**Positives**

1. Base score: 1000

2. For each block picked up from lower platform (given only once for each block): 100 (**L**)

3. For each block picked up from upper platform (given only once for each block): 150 (**U**)

4. For successful RFID reading and indication of each block: 150 (**S**)

5. For placing the block on the correct platform: 100 (**P**)

6. Time bonus: time left in seconds (**B**)

**Negatives**

1. For incorrect RFID reading and indication: -100 (**NS**)

2. For placing block on an incorrect platform: -50 (**NP)**

3. For dropping the block each time: -50 (**D**)

4. Collision with the walls each time: -50 (**W**)

5. Collision with the gates each time: -50 (**G**)

6. Negative marks for each timeout: -150 (**T**)

7. Negative marks for restart: -250 (**R**)

####Scoring Formula

1000 + 100*L + 150*(U+S) + 100*P + B - 50*(NP + D + W+G) - 100*NS - 150*T - 250*R

####Tutorial
Find the detailed tutorial [here]({{ site.baseurl }}/tutorial/event/warehouse).

###Contact

####Mratunjay Gupta
**(91) 8609266778**  
**mratunjay@robotix.in**

####Riya Bubna
**(91) 9007388802**  
**riya@robotix.in**