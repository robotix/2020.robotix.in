---
layout: post
title: 'B.R.I.C.K.S'
subTitle: 'Semi Autonomous Event'
logo: /img/event/bricks/logo.png
image: img/event/bricks/banner.png
actions:
  -
    icon: 'facebook'
    caption: 'Discussion Forum'
    url: 'https://www.facebook.com/groups/bricksevent/'
    target: '_blank'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/bricks'
    target: '_blank'
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    url: '/img/event/bricks/DIY.jpg'
    target: '_blank'
  -
    icon: 'youtube'
    caption: "Tutorial Video"
    url: https://www.youtube.com/watch?v=2_kq5MJmR7I
    target: '_blank'
  -
    text: 'P'
    caption: 'Total prize money worth Rs 45,000'
  -
    text: 'R'
    caption: 'Register'
    url: https://www.robotix.in/blog/registration-for-robotix-2017/
---

#### Introduction

Imagine how convenient life would be if robots could take over simple day-to-day tasks like those of construction. A bot that would be capable of determining which blocks are useful for work and dispose the ones that aren’t.

Your job is to build a miniature version of such a bot. Sounds fun, doesn’t it?

#### USP

* Weight differentiation (pressure or load sensor)

* Buttonless traversal

* Bluetooth communication.

#### Problem Statement

To build a robot that is capable of segregating building material by successfully receiving the number of blocks required sent via Bluetooth and differentiating between hollow and solid bricks by successful autonomous weight detection.

#### General Description and Event Setup

* The semi-autonomous movement of the robot is to be achieved without the use of buttons, i.e, using methods such as gesture control, touch pad traversal, etc.

* There will be multiple hollow and solid blocks of two different shapes i.e. cubical and cylindrical.

* The robot will be given a number of blocks required sent by us via Bluetooth transmission.

* This transmitted data will be known only to the robot and not the participant.

* The solid blocks will be of different shapes and have to be placed on their corresponding platforms present at different heights.

* All the hollow blocks are to be deposited in the waste zone at the centre of the arena.

* The robot will then identify which are hollow and solid based on their weight The robot must be equipped with some indication mechanism so that the participant gets to know whether the block is suitable for construction (Solid blocks are suitable for construction).


#### Arena

![](/img/event/bricks/arena_iso.JPG){:.img-responsive}

##### Arena Specifications

* The outer dimensions of the arena will be 200 cm x 200 cm.
* The central circle is the waste zone of diameter 30 cm.
* The green zone is the deposit zone of dimensions 30 cm x 30 cm
* The robot will start from the Yellow Zone.

![](/img/event/bricks/arena_TOP.JPG){:.img-responsive}

#### Block Specifications

**Cubical** : 6cm X 6cm X 6cm.

**Cylindrical**
* Diameter: 6cm.
* Height: 6cm.

Weight: The weight of the hollow blocks will be less than 50 grams, And that of solid blocks will be greater than 70 grams. No block will weigh greater than 200 grams.

Handle: A handle will be made on top of each block to facilitate lifting as shown in the figure. A free space of 1 cm x 5 cm will be provided inside each handle

![](/img/event/bricks/cube_front.JPG){:.img-responsive}
![](/img/event/bricks/cube_iso.JPG){:.img-responsive}
![](/img/event/bricks/cylinder_iso.JPG){:.img-responsive}


**Robot specification:**

* The robot must fit in a box of 30cm x 30cm x 30cm with a tolerance of 10% in the dimensions of robot. No part/mechanism of/on the bot should exceed the given dimensions before the commencement of the event. However the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

#### Event Rules

* The robot can have any suitable buttonless mechanism for traversal.

* In the second round the robot has to interpret data transmitted wirelessly.

* Points will be awarded for correct identification and deposition of the blocks at the end of the run. Correct identification: Whether block is useful or waste (according to weight). Deposited Objects: Blocks on the correct deposit zone.


##### Restarts and Timeouts
* A maximum of 2 Timeouts of 1 minute each may be taken. Penalty will be awarded for each timeout and robot will start from its last position on the arena.
* The participant’s robots can have a maximum of 2 restarts. A penalty will be imposed on the team for every restart that they take.
* After the restart, the participant’s robot will be set to its initial position. Timer will be set to zero and the run will start afresh with the addition of the penalty for restart.
* A timeout can be taken anytime at the user's discretion.
* A restart can only be taken if there is a genuine technical fault in the bot. Team ROBOTIX may refuse a restart if the reason is not genuine, and their decision will be binding and final.


##### Round 1

**Task:**

* This round will consist solely of hollow or solid cubical blocks only (No cylindrical).

* There will be a total of 8 blocks with hollow and solid distributed in random ratio. The ratio may vary from participant to participant but the total number of blocks will be same.

* The robot will have to identify correctly whether the block is hollow or solid.

* For solid blocks, the block will have to be deposited in the correct zone.

* For hollow blocks, they will be deposited in the Waste Box at the centre of the arena.
* This has to be done while avoiding the obstacles.

**Round rules:**

* Maximum time: 3 minutes.

* Maximum number of Time-outs allowed :1(1 min)


**Scoring Formula:**

* Correct identification( + 30) (P)

* Picking up blocks (+40) (Q)

* Dropping off at the correct venue.(+50) (R)

* Time factor(+2)(T)

* Incorrect identification. ( -20) (A)

* Dropping blocks.(-30)(B)

* Placing in incorrect zone.(-30)(C)

* Touching obstacles.(-15)(D)

* 25 pointed will be deducted for each timeout. (O)

* 100 points will be deducted for each restart(1 allowed) (S)


**Formula:**

`30*P +40*Q+50*R+ 2*(Time remaining)- 20*A -30*B-30*C -15*D-100*S -25*O`

##### Round 2

**Task:**

* This round will have blocks of different shapes,i.e, cubical and cylindrical.

* The robot will be given data about how many solid blocks of different shapes will be needed.

* The data will be given via bluetooth in the following format: ` *X&Y# ` where:
    * ‘*’ is start character
    * ‘X’ is number of solid cubical block needed (Single digit number).
    * ‘&’ is separator character.
    * ‘Y’ is number of solid cylindrical block needed (Single digit number).
    * ’#’ is stop character.

    No quotes (‘’) will be transmitted. It is just for participant's understanding.

* If the robot encounters a hollow block it has to be deposited in the Waste Box at the centre of the arena.

* The robot will have to correctly display which block is needed and which isn’t by lighting up the corresponding LED.

* The controller will then have to pick up the blocks and place them in the corresponding zones.

* In this round the robot has to pick up ‘X’ cubical and ‘Y’ cylindrical blocks. This information will be sent to the robot and not the participant. The participant can then either know the required number of blocks via a LCD on the robot or devise some mechanism for the robot to distinguish between cubical and cylindrical blocks.

* The robot can be given information about the shape of the block. E.g. Some gesture to indicate shape of the block. Then the robot has to give an indication whether or not to deposit the block in the correct zone.

* Once the robot has successfully placed X and Y blocks in respective zones there must be some indication from the robot that the run has ended. The user then has to tell Team Robotix to stop the clock.


**Round rules:**

* Maximum time: 5 minutes.

* Maximum number of Time-outs allowed :2(1 min)

* Restarts allowed : 1
NOTE: Restarts will be given only for technical fault in the bot.

**Scoring Formula:**

* Correct identification via LED. ( + 30) (P)

* Picking up blocks (+40) (Q)

* Dropping off at the correct venue.(+50) (R)

* Time factor(+2)(T)

* Incorrect identification. ( -20) (A)

* Dropping blocks.(-30)(B)

* Placing in incorrect zone.(-30)(C)

* Touching obstacles.(-15)(D)

* 25 pointed will be deducted for each timeout. (O)

* 100 points will be deducted for each restart(1 allowed) (S)


**Formula:**

`30*P +40*Q+50*R+ 2*(Time remaining)- 20*A -30*B-30*C -15*D-100*S - 25*O`

**RULES:**

**General Rules:**

* Maximum number of participants allowed per team: 4 people.

* The participants will be provided with 220 Volts, 50 Hz standard AC supply.

* Participants will have to arrange for any other power supply required for their robot.

* Teams cannot tinker with their bots during the run.

* LEGO kits or its spare parts or pre-made mechanical parts are not allowed.[ (](http://en.wikipedia.org/wiki/Lego_Mindstorms)[http://en.wikipedia.org/wiki/Lego_Mindstorms)](http://en.wikipedia.org/wiki/Lego_Mindstorms))

* The decision of the Team Robotix will be final and binding.

* The rules are subject to change.

**Links to Tutorials:**

For relevant tutorials check [ROBOTIX TUTORIALS](http://www.robotix.in/tutorial/).

##### Contact:

###### Vraj Parikh

Email: **[vraj@robotix.in](mailto:vraj@robotix.in)**

Ph. no: **+91 8000981472**

###### Manash Pratim Das

Email: **[manash@robotix.in](mailto:manash@robotix.in)**

Ph. no: **+91 9933890509**

###### Shashwat Gupta

Email: **[shashwat@robotix.in](mailto:shashwat@robotix.in)**

Ph. no: **+91 7278275550**
