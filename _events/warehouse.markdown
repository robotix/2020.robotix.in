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
    text: 'F'
    caption: 'FAQs'
    url: '/event/warehouse/faq'
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
    icon: 'youtube'
    caption: 'Tutorial Video'
    url: 'https://www.youtube.com/watch?v=X_Oti76zowo'
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

####General Arena Description & Event Setup

1. The semi-autonomous robot movement and traversal has to be a **gesture controlled** (with no buttons or any keyboard), preferably using a Touchpad.
2. There will be multiple **5 cm blocks**, each with a particular **RFID tag**.
3. The “center platform” consists of three parts. There are two lower platforms which are **1 cm** above ground level due to platform thickness, each and **50 cm X 10 cm** in dimension each. Between the two lower platforms is a raised platform at a height of **10 cm** above ground level including the platform thickness, and **50 cm X 30 cm** in dimension.
4. The “shelves” are on the four corners of the arena. They are **two-tiered.** The four lower shelves are called **‘1A, 2A, 3A, 4A’** each of which corresponds to a particular corner and it is **1 cm** above ground level due to the platform thickness. The upper shelves are called **‘1B, 2B, 3B, 4B’** corresponding to the lower shelf and it is **12 cm** above ground level including the platform thickness. Each shelf (lower and upper) is **20 cm X 20 cm.**
5. The bot must have a gripping mechanism which is capable of accessing blocks placed on both the levels. It must be able to pick and drop blocks on any of the eight shelves. (Preferably a forklift or a gripper along with rack and pinion mechanism).
6. Each block will have two strips beneath it (Like a railway track) which will be **0.5 cm wide and 1 cm high** in cross-section and the same length as the block (**5 cm**). This will create a vacant space of **4 cm X 1 cm X 5 cm** beneath the block. This has been done to allow bots using forklift mechanism to be able to pick the blocks from beneath. If you implement a forklift then it's forks can enter this gap and pick the block. You can also use a mechanism to grip from beneath.
7. The RFID tag on each block will be placed on the top. Each RFID tag gives a **unique alpha-numeric number** when you read it. This contain information as to which shelf the block belongs to among 1A, 1B, 2A, 2B, 3A, 3B, 4A, 4B. **You will be provided with the unique RFID number for each shelf at the time of the event and you can feed it into your robot.**
8. On the corner edge of every shelf there will be a **15 cm X 15 cm** square safe zone as shown in the diagram. While placing the block on any shelf the bot must ensure that the block is kept within the safe zone.
9. Some blocks will have RFID tags that do not correspond to any of the eight shelves and these blocks are to be placed anywhere on the “center-platform”. If they are already on the center-platform then they can be ignored.
10. **Two** of the four corners will have **shelves with gates.**
11. The gates open when their corresponding **Infra-Red button** is activated. The button is located on the ground, **10 cm inward** from the arena border and **midway** between two adjacent shelves as shown.
12. The button consists of a Infra Red proximity based sensor. It is activated when the bot stops in front of it for **3 seconds.** Once activated, the corresponding gates of the both shelves of the corresponding corner are opened for a total of **30 seconds** each. The bot must pick/drop the block in that duration and should not touch the gates at any time.
13. The gates can be closed immediately before the 30 second are over if the bot goes and stops over the button for another **2 seconds** within that 30 second countdown.
14. The gates can then be reopened after it has been closed by activating the button again.
15. The event ends when the user has placed **all the blocks correctly** on their corresponding shelves and leaving those blocks which do not correspond to any shelf on the central platform. **All the gates must also be closed.**
16. Some blocks will be placed on a shelf at the start of the event and they must be **checked if they are on the correct shelf.** They must be moved to the centre-platform if their RFID number belongs to none of the eight shelves and if it does belong to a certain shelf then it must be placed on that shelf.

###Rounds

####Round 1

1. The Bot will start from the Start zone which will be a **30 cm x 30 cm** square on any one adjacent side of the Arena.
2. The bot then has to pick and place all the 6 given blocks from their initial position to whichever shelf it belongs to.
3. The blocks in round 1 will belong to shelves **‘1A, 2A, 3A, 4A’** only. No block will belong to Zone B.
4. There will be **two** dummy blocks which won’t be transmitting any shelf id and hence must be placed **anywhere** on the center platform. If those blocks are on a shelf, then they must be picked and placed on the center platform.
5. The bot has to traverse the arena and reach the blocks by Gesture control.
6. Upon reaching the block the bot must pick it up using a gesture controlled gripper or forklift mechanism.
7. Then the bot has to read the information received from the RFID and **must display** it through a device, and then proceed towards depositing the block to it’s corresponding shelf. The indication is necessary for the user to know where to take the block.
8. A maximum of **2** timeouts and **2** restarts can be taken in this round. However a restart will be granted in the event of a technical failure only and will be based on Team ROBOTIX discretion.
9. A maximum of **4** minutes will be given to complete this round. The restart will only be given before **3** minutes into the round.
10. The round ends when the bot **returns** to the start zone after completing the task.

####Round 2

1. The Bot will start from the Start zone which will be a **30 cm x 30 cm** square on any side of the square Arena.
2. The bot then has to pick and place all the **9** given blocks from their initial position to whatever shelf it belongs to.
3. The Blocks may belong to **any** of the Shelves, in **any** of the zones.
4. There will be **three** dummy blocks which won’t be transmitting any shelf id and hence must be placed **anywhere** on the center platform. If those blocks are on a shelf, then they must be picked and placed on the center platform.
5. The bot has to traverse the arena and reach the blocks by Gesture control.
6. Upon reaching the block the bot must pick it up using a gesture controlled gripper or forklift mechanism.
7. Then the bot has to read the information received from the RFID and display it through a device, and then proceed towards depositing the block to its corresponding shelf.
8. A maximum of **2** timeouts and **2** restarts can be taken in this round. However a restart will be granted in the event of a technical failure only and will be based on Team ROBOTIX discretion.
9. A maximum of **6** minutes will be given to complete this round. The restart will only be given before **4:30** into the round.
10. The round ends when the bot **returns** to the start zone after completing the task.

###Arena

**Descriptive View**

![]({{ site.baseurl }}/img/event/warehouse/image_0.png){:class="img-responsive"}

**Isometric View**

![]({{ site.baseurl }}/img/event/warehouse/image_1.png){:class="img-responsive"}

**Top View**

![]({{ site.baseurl }}/img/event/warehouse/image_2.png){:class="img-responsive"}

**Side View**

![]({{ site.baseurl }}/img/event/warehouse/image_3.png){:class="img-responsive"}

**Gate (Open and Closed Profiles)**

![]({{ site.baseurl }}/img/event/warehouse/image_4.png){:class="img-responsive"}

###Rules And Specifications

####General Rules

1. All arena dimensions may have a tolerance (error) of up to 10%.
2. Each team can consist of a maximum of 4 members.
3. Only **2** members per team will be allowed to control the robot.
4. The participants will be provided with 220 volts, 50 Hz standard AC supply.
5. Each team should have unique participants i.e. no two teams can have even a single participant common.
6. The team members can be from different institutes or colleges.
7. Teams qualifying the first round will go into the second round and the second round performance will determine the winner.
8. The teams cannot touch their bots during the course of the run, unless timeout is taken.
9. The right spirit of participation is expected from the participants.
10. **The decision of Team ROBOTIX will be final and binding.**

####Event Rules:

####Block

**Isometric:**

![]({{ site.baseurl }}/img/event/warehouse/image_5.png){:class="img-responsive"}

**Front:**

![]({{ site.baseurl }}/img/event/warehouse/image_6.png){:class="img-responsive"}

1. The Blocks will be made of Hollow wood.
2. The tolerances in all dimensions are 10%.
3. The weight of the block will not exceed 50 gms.
4. The position of all the blocks will be decided by Team ROBOTIX.

####Picking and placing up the Block

1. Gesture controlled mechanism is compulsory.
2. The blocks have to be picked from the shelves as **neatly** as possible and dragging must be avoided if possible.
3. If the block falls down, there will be **penalties** and unless it has been replaced onto the shelf, no points for placement will be given.

####Arena and Locomotion

1. The robot has to start from the **Start Zone**, which will be adjacent to one of the edges of the arena.
2. The bot has to go to complete the tasks as specified above. Any discrepancies will be handled by Team ROBOTIX and their decision will be final and binding.
3. The gesture control mechanism **shouldn’t use any physical buttons.** The general methods of gesture control are Accelerometer, IMU, touch phone, Touch Screen Sensor, Flex Sensors. The types of sensors that must not be used include IR LED photodiode pairs, Proximity Sensors, and buttons. Permission for using any method for Gesture control other than the above mentioned ones must be taken from Team ROBOTIX beforehand.
4. The Block must be placed on the platform safezone. Sliding the block on the platform is allowed but if the block falls from the platform while picking or placing, it will incur negative points.
5. Time will be kept by Team ROBOTIX and their decision will be final and binding.
6. Gesture Control is to be used for **locomotion aswell as block controlling.**

####Initial Orientation of Robot

1.  The participant is allowed to decide the initial orientation of his robot on the start zone.
2. Team ROBOTIX reserves the right to disallow any initial orientation of the robot inside the  starting  zone  if  it  gives  the  participant  an  undue advantage, solely based on the judge's discretion.

####Restarts and Timeouts

1. A maximum of 2 Timeouts of **1 minute** each may be taken. Penalty will be awarded for each timeout and robot will start from its last position on the arena.
2. The participant's robots can have a maximum of 2 restarts. A penalty will be imposed on the team for every restart that they take.
3. After the restart, the participant's robot will be set to its initial position. Timer will be set to zero and the run will start afresh with the addition of the penalty for restart.
4. A timeout can be taken anytime at the users discretion.
5. A restart can only be taken if there is a genuine technical fault in the bot. Team ROBOTIX may refuse a restart if the reason is not genuine, and their decision will be binding and final.

####Technical Rules

1. All Circuitry and sensory equipment placed on the robot should be adhering to the ROBOT SPECIFICATIONS.
2. Participants will have to bring their own programmers, cables and software. No Programmers will be supplied.
3. Hard Coding [(http://en.wikipedia.org/wiki/Hard_coding)](http://en.wikipedia.org/wiki/Hard_coding) is not allowed.
4. A 220V 50Hz power source will be provided.
5. All on board processing must be done on a 16 bit microcontroller or less. The robots cannot be controlled by a remotely kept computer.
6. A laptop will be allowed to be connected with the microcontroller and the bot during the run only if the user is using the laptop camera for the gesture recognition. However the user must ensure that all on board calculations except the gesture recognition are done on the 16 bit microcontroller.
7.  Processors of more than 16-bits are not allowed. ARM processors are not allowed.

####Robot Specifications

1. Each robot can have maximum dimension of 30 x 30 x 30 cubic cm (L x B x H) respectively. 
2. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event run. The robots can exceed their respective dimensions once the event commences, due to elongation of arms/gripper/forklift.
3. There is no weight restriction on the robot.
4. LEGO kits or its spare parts or pre-made mechanical parts are not allowed. [(http://en.wikipedia.org/wiki/Lego_Mindstorms)](http://en.wikipedia.org/wiki/Lego_Mindstorms)
5. Ready-made gearboxes, sensors, development boards can be used but no other part of the robot should contain any ready-made components. Simple car bases with no extra features may be used.
6. The bots should not damage the Warehouse event arena in any way. If it does so, a penalty will be imposed on the team. The magnitude of the penalty will be decided by Team ROBOTIX.
7. Ready-made gripper is also allowed but it should be controlled using gesture only.

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

####Note
* You will be provided with the unique RFID number for each shelf before the start of the event and you can feed it into your robot.
* This is the RFID reader we have used for testing: [Link](http://robokits.co.in/wireless-solutions/rfid/rfid-reader-module-with-antenna-usb-uart?zenid=8c1v3l8upd40op6npo9732sgh3)
* This is the RFID tag we will be using during the event: [Link](http://www.amazon.in/RFID-Tag-keychain-5-Pcs/dp/B00U3VDMGK/ref=sr_1_1?ie=UTF8&qid=1451925749&sr=8-1&keywords=rfid+tags)
* It is suggested that the participant try to make a wireless robot. In which case the wireless bot should be battery powered on-board.

###Contact

####Mratunjay Gupta
**(91) 8609266778**  
**mratunjay@robotix.in**

####Riya Bubna
**(91) 9007388802**  
**riya@robotix.in**