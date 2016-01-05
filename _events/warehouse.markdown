---
layout: post
title: "Warehouse"
subTitle: 'Semi Autonomous Event'
logo: /img/event/warehouse/logo.jpg
actions:
  -
    text: 'F'
    caption: 'Discussion Forum'
    url: 'http://bit.do/warehouse-event'
    target: '_blank'
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    url: '/img/event/warehouse/warehouse-diy.jpg'
    target: '_blank'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/warehouse'
    target: '_blank'
  -
    text: 'P'
    caption: 'Total prize money worth Rs 44,000'
  -
    icon: 'flag'
    caption: 'Register Now!'
    url: '/blog/registration-process-for-robotix-2016/'
    target: '_blank'
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

* The semi-autonomous robot movement and traversal has to be a **gesture controlled** (with no buttons or any keyboard), preferably using a Touchpad.
* There will be multiple **5 cm blocks**, each with a particular **RFID tag**.
* The blocks are initially arranged either on the **“centre platform”** in the center or on **“shelves”.**
* The “center platform” consists of three parts. There are two lower platforms which are **1 cm** above ground level due to platform thickness, each and **50 cm X 10 cm** in dimension each. Between the two lower platforms is a raised platform at a height of **10 cm** above ground level including the platform thickness, and **50 cm X 30 cm** in dimension.
* The “shelves” are on the four corners of the arena. They are **two-tiered.** The four lower shelves are called **‘1A, 2A, 3A, 4A’** each of which corresponds to a particular corner and it is **1 cm** above ground level due to the platform thickness. The upper shelves are called **‘1B, 2B, 3B, 4B’** corresponding to the lower shelf and it is **12 cm** above ground level including the platform thickness. Each shelf (lower and upper) is **20 cm X 20 cm.**
* The bot must have a gripping mechanism which is capable of accessing blocks placed on both the levels. It must be able to pick and drop blocks on any of the eight shelves. (Preferably a forklift or a gripper along with rack and pinion mechanism).
* Each block will have two strips beneath it (Like a railway track) which will be **0.5 cm wide and 1 cm high** in cross-section and the same length as the block (**5 cm**). This will create a vacant space of **4 cm X 1 cm X 5 cm** beneath the block. This has been done to allow bots using forklift mechanism to be able to pick the blocks from beneath. If you implement a forklift then it's forks can enter this gap and pick the block. You can also use a mechanism to grip from beneath.
* The RFID tag on each block will be placed on the top. Each RFID tag gives a **unique alpha-numeric number** when you read it. This contain information as to which shelf the block belongs to among 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B. **You will be provided with the unique RFID number for each shelf at the time of the event and you can feed it into your robot.**
* The bot has to read the RFID tag of each block and take it to the shelf that the block belongs to.
* After reading the RFID tag of a block, there must be an **indication system implemented by the user on the bot** such as a sound or a certain LED light combination glowing up on the bot or a LCD display or a seven-segment display or a display, to tell the user which shelf that block belongs to. This indication is important because the user needs to know which shelf the block is to be taken after it has read the RFID tag.
* Some blocks will have RFID tags that do not correspond to any of the eight shelves and these blocks are to be placed anywhere on the “center-platform”. If they are already on the center-platform then they can be ignored.
* Some blocks will be placed on a shelf at the start of the event and they must be **checked if they are on the correct shelf.** They must be moved to the centre-platform if their RFID number belongs to none of the eight shelves and if it does belong to a certain shelf then it must be placed on that shelf.
* The user must use a gesture-controlled mechanism, to pick/grip/lift the blocks and traverse the arena to the corresponding shelf and place the block on that shelf.
* On the corner edge of every shelf there will be a **15 cm X 15 cm** square safe zone as shown in the diagram. While placing the block on any shelf the bot must ensure that the block is kept within the safe zone.
* **Two** of the four corners will have **shelves with gates.**
* The gates open when their corresponding **Infra-Red button** is activated. The button is located on the ground, **10 cm inward** from the arena border and **midway** between two adjacent shelves as shown.
* The button consists of a Infra Red proximity based sensor. It is activated when the bot stops in front of it for **3 seconds.** Once activated, the corresponding gates of the both shelves of the corresponding corner are opened for a total of **30 seconds** each. The bot must pick/drop the block in that duration and should not touch the gates at any time.
* The gates can be closed immediately before the 30 second are over if the bot goes and stops over the button for another **2 seconds** within that 30 second countdown.
* The gates can then be reopened after it has been closed by activating the button again.
* The event ends when the user has placed **all the blocks correctly** on their corresponding shelves and leaving those blocks which do not correspond to any shelf on the central platform. **All the gates must also be closed.**
* The total arena is  **200 cm X 200 cm**
* The Bot dimensions allowed are **25 cm X 25 cm X 25 cm.**

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

* There are 2 timeouts and 2 restart allowed.

####Round 2

* There will be 10 blocks, 7 of which will corresponding to either ‘A’ or ‘B’ platforms and the other 3 are to be ignored.

* The round will be for 5 mins.

* There are 2 timeouts and 2 restart allowed.

###Scoring

####Round 1

**Positives**

1. Base score: 1000

2. For each block picked/gripped (given only once for each block): 100 (**L**)

3. For successful RFID reading and correct indication of each block: 150 (**S**)

4. For placing the block on the correct platform: 150 (**P**)

5. Time bonus: time left in seconds (provided the task is complete)(**B**)

**Negatives**

1. For incorrect RFID reading and indication: -50 (**NS**)

2. For placing block on an incorrect platform: -50 (**NP)**

3. For dropping the block each time: -50 (**D**)

4. Collision with the arena border walls/falling off the arena each time: -50 (**W**)

5. Collision with the gates each time: -50 (**G**)

6. Negative marks for each timeout: -100 (**T**)

7. Negative marks for restart: -150 (**R**)

####Scoring Formula

1000 + 100 x L + 150 x (S + P) + B - 50 x (NS + NP + D + W + G) - 100 x T - 150 x R

####Round 2

**Positives**

1. Base score: 1000

2. For each block picked/gripped (given only once for each block): 100 (**L**)

3. For successful RFID reading and indication of each block: 150 (**S**)

4. For placing the block on the correct platform: 150 (**P**)

5. Time bonus: time left in seconds (provided the task is complete)(**B**)

**Negatives**

1. For incorrect RFID reading and indication: -50 (**NS**)

2. For placing block on an incorrect platform: -50 (**NP)**

3. For dropping the block each time: -50 (**D**)

4. Collision with the walls each time: -50 (**W**)

5. Collision with the gates each time: -50 (**G**)

6. Negative marks for each timeout: -100 (**T**)

7. Negative marks for restart:  -150 (**R**)

####Scoring Formula

1000 + 100 x L + 150 x (S + P) + B - 50 x (NS + NP + D + W + G) - 100 x T - 150 x R

###Rules And Specifications

####General Rules:
* All arena dimensions may have a tolerance (error) of up to 10%.
* Each team can consist of a maximum of 4 members.
* The participants will be provided with 220 volts, 50 Hz standard AC supply.
* Each team should have unique participants i.e. no two teams can have even a single participant common.
* The team members can be from different institutes or colleges.
* Teams qualifying the first round will go into the second round and and those qualifying the second round will participate in the third round.
* The teams cannot touch their bots during the course of the run, unless timeout is taken.
* The right spirit of participation is expected from the participants.
* **The decision of Team ROBOTIX will be final and binding.**

####Event Rules:
* The robot has to start from the **Start Zone** that will be adjacent to the center of one of the edges at ground level.
* The bot has to go to complete the tasks as specified above. Any discrepancies will be handled by Team ROBOTIX and their decision will be final and binding.
* The gesture control mechanism shouldn’t use real or virtual buttons. The general methods of gesture control are Accelerometer, IMU, touch phone, Touch Screen Sensor, Flex Sensors. The types of sensors that must not be used include IR LED photodiode pairs, Proximity Sensors, and buttons. Permission for using any method for Gesture control other than the above mentioned ones must be taken from Team ROBOTIX beforehand.
* The Block must be placed on the platform safezone. Sliding the block on the platform is allowed but if the block falls from the platform while picking or placing, it will incur negative points.
* Time will be kept by Team ROBOTIX and will their decision will be final and binding.
* Gesture Control is to be used for locomotion aswell as block controlling.

Initial Orientation of Robot:

* The participant is allowed to decide the initial orientation of his robot on the start zone.
* Team ROBOTIX reserves the right to disallow any initial orientation of the robot inside the  starting  zone  if  it  gives  the  participant  an  undue advantage, solely based on the judge's discretion.

Restarts and Timeouts:

* A maximum of 2 Timeouts of 1 minutes each may be taken. Penalty will be awarded for each timeout and robot will start from its last position on the arena.
* The participant's robots can have a maximum of 2 restarts. A penalty will be imposed on the team for every restart that they take.
* After the restart, the participant's robot will be set to its initial position. Timer will be set to zero and the run will start afresh with the addition of the penalty for restart.

####Technical Rules:
* It is suggested that the participant try to make a wireless robot. In which case the wireless bot should be battery powered on-board.
* All Circuitry and sensory equipment placed on the robot should be adhering to the ROBOT SPECIFICATIONS.
* Participants will have to bring their own programmers, cables and software. No Programmers will be supplied.
* Hard Coding [(http://en.wikipedia.org/wiki/Hard_coding)](http://en.wikipedia.org/wiki/Hard_coding) is not allowed.
* All the dimensions of the arena and the blocks are to be considered with a tolerance of 15%.

####Robot Specifications:
* Each robot can have maximum dimension of 25 x 25 x 25 cubic cm (L x B x H) respectively. 
* No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event run. The robots can exceed their respective dimensions once the event commences.
* There is no weight restriction on the robot.
* The gesture controlled semi-autonomous robots should be on-board processing robots, i.e., the robots cannot be controlled by a remotely kept computer.
* LEGO kits or its spare parts or pre-made mechanical parts are not allowed. [(http://en.wikipedia.org/wiki/Lego_Mindstorms)](http://en.wikipedia.org/wiki/Lego_Mindstorms)
* Ready-made gearboxes, sensors, development boards can be used but no other part of the robot should contain any ready-made components. Simple car bases with no extra features may be used.
* The bots should not damage the Warehouse event arena in any way. If it does so, a penalty will be imposed on the team. The magnitude of the penalty will be decided by Team ROBOTIX.
* Processors of less than 16-bits are allowed. ARM processors are not allowed.
* Ready-made gripper is also allowed but it should be controlled using gesture.

####Important Notes:
* The robot should fit in a cubical box of size 25 cm. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event.
* However, the dimensions can change during the course of the run due to elongation of arm or movement of body parts, etc.
* There is no weight restriction on the robot.
* The dimensions of the arena are to be considered with a maximum tolerance of 10%.
* You will be provided with the unique RFID number for each shelf before the start of the event and you can feed it into your robot.
* There must be an indication system implemented on the bot so that it can tell the user which shelf the RFID tag indicates.
* This is the RFID reader we have used for testing: [Link](http://robokits.co.in/wireless-solutions/rfid/rfid-reader-module-with-antenna-usb-uart?zenid=8c1v3l8upd40op6npo9732sgh3)
* This is the RFID tag we will be using during the event: [Link](http://www.amazon.in/RFID-Tag-keychain-5-Pcs/dp/B00U3VDMGK/ref=sr_1_1?ie=UTF8&qid=1451925749&sr=8-1&keywords=rfid+tags)


###Contact

####Mratunjay Gupta
**(91) 8609266778**  
**mratunjay@robotix.in**

####Riya Bubna
**(91) 9007388802**  
**riya@robotix.in**
