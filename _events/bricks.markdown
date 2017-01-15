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
    url: /blog/registration-for-robotix-2017/
    target: '_blank'
  -
    text: 'F'
    caption: 'FAQ'
    url: /event/bricks/faq
    target: _blank
---

#### Introduction

Imagine how convenient life would be if robots could take over simple day-to-day tasks like those of construction. A bot that would be capable of determining which blocks are useful for work and dispose the ones that aren’t.

Your job is to build a Bot Recognizing Instructions for Cube Keeping and Sorting, a.k.a B.R.I.C.K.S.

#### USP

* Weight differentiation (pressure or load sensor)

* Buttonless control

* Bluetooth communication.

#### Problem Statement

To build a robot that is capable of segregating building material by successfully receiving the number of blocks required sent via Bluetooth and differentiating between hollow and solid bricks by successful autonomous weight detection.

#### General Description and Event Setup

* The semi-autonomous movement of the robot is to be achieved without the use of buttons, i.e, using methods such as gesture control, touch pad control, etc. This can be wired or wireless.

* There will be multiple hollow and solid blocks of two different shapes i.e. cubical and cylindrical.

* The robot will be sent the number of blocks required via Bluetooth transmission at the start of the run (in round 2 only). Refer to round 2 tasks for details.

* The solid blocks will be of different shapes and have to be placed on their corresponding zones.

* All the hollow blocks are to be deposited in the waste zone at the centre of the arena.

* The robot will then identify which are hollow and solid based on their weight The robot must be equipped with some indication mechanism so that the participant gets to know whether the block is suitable for construction (Solid blocks are suitable for construction).


#### Arena

![](/img/event/bricks/arena_iso.JPG){:.img-responsive}

##### Arena Specifications

* The outer dimensions of the arena will be 200 cm x 200 cm.
* The central red circle is the waste zone, of diameter 30 cm.
* The green zone is the deposit zone for solid blocks, of dimensions 30 cm x 30 cm.
* The robot will start from the Yellow Zone.
* All the zones are at the same level with the arena (no elevation).
* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

![](/img/event/bricks/arena_top.JPG){:.img-responsive}

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

* The robot must fit in a box of 30cm x 30cm x 30cm with a tolerance of 10% in the dimensions of robot.
* No part/mechanism of/on the bot should exceed the given dimensions before the commencement of the event. However the dimensions can change during the course of the run.

#### Event Rules

* The robot can have any suitable buttonless mechanism for control. It can be wired or wireless, some methods may be using accelerometer, joystick, mobile apps, touchpad, etc. All the actuations or movement of the bot apart from traversal should also be done with a buttonless mechanism.

* In the second round the robot has to interpret data transmitted wirelessly.

* Points will be awarded for correct identification and deposition of the blocks at the end of the run. Correct identification: Whether block is useful or waste (according to weight). Deposited Objects: Blocks on the correct deposit zone.

* While picking and placing any block the robot should not make contact with any other unsegregated blocks kept in the arena. There will be a penalty awarded for each contact. However you can slightly displace a block while trying to pick it.


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

* All the 8 blocks, hollow and solid, have to be placed in their resepective zones to complete the task.

* The robot will have to identify correctly whether the block is hollow or solid.

* For solid blocks, the block will have to be deposited in the green zone.

* For hollow blocks, they will be deposited in the Waste Box at the centre of the arena(red zone).


**Round rules:**

* A maximum of 4 minutes will be given to complete this round. The restart can only be taken before 3 minutes into the round.

* Maximum number of Time-outs allowed: 2(1 min each).

* Maximum number of Restarts allowed: 2.

NOTE: Restarts will be given only for technical fault in the bot.

**Scoring Formula:**

* **Positives**

    * Base score: 1000

    * For each blocks picked/gripped(given once for each block): 100 (Q)

    * Successful identification of weight: 150 (P)

    * Dropping off at the correct zone: 150 (R)

    * Time factor: 2(T in seconds)

* **Negatives**

    * Incorrect identification of weight: -50 (A)

    * Placing in incorrect zone: -50 (C)

    * Droping the block each time: -30 (L)

    * Touching obstacles: -50 (D)

    * For each timeout: -100 (O)

    * For each restart: -150 (S)


**Formula:**

`1000 + 100*(Q) + 150*(P + R) + 2*T - 30*L - 50 *(A + C + D) - 100*O - 150*S`

##### Round 2

**Task:**

* This round will have blocks of both shapes,i.e, cubical and cylindrical.

* The robot will be given data about how many solid blocks of both shapes will be needed.

* The data will be given via bluetooth in the following format: `*X&Y#` where:
    * ‘*’ is start character
    * ‘X’ is number of **solid** cubical block needed (Single digit number).
    * ‘&’ is separator character.
    * ‘Y’ is number of **solid** cylindrical block needed (Single digit number).
    * ’#’ is stop character.

    No quotes (‘’) will be transmitted. It is just for participant's understanding.

* In this round the robot has to pick up ‘X’ cubical and ‘Y’ cylindrical blocks. This information will be sent to the robot and not the participant.

* The robot should give an indication to the user when it receives the number of required blocks.

* The round is completed when the X+Y blocks are deposited in the Green zone.

* The robot can tell the participant the values of X and Y via a LCD or LEDs, etc. Then the participant can pick and place the X and Y number of each block in the green zone. The participant may also use some algorithm for the robot to simply indicate whether a block needs to be deposited in the green zone or not, without telling the participant the values of X and Y.

* The participant may give information about the shape of the block to the robot. E.g. Some gesture to indicate shape of the block. Then the robot may give an indication whether or not to deposit the block in the correct zone.

* If the robot encounters a hollow block it can be deposited in the Waste Box at the centre of the arena to earn extra points. However depositing the hollow blocks in the waste zone is not compulsory to complete the run.

* Once the robot has successfully placed X and Y blocks in respective zones there must be some indication from the robot that the run has ended. The user then has to tell Team Robotix to stop the clock.


**Round rules:**

* A maximum of 6 minutes will be given to complete this round. The restart will only be given before 4:30 into the round.

* Maximum number of Time-outs allowed :2(1 min each)

* Restarts allowed : 2

NOTE: Restarts will be given only for technical fault in the bot.

**Scoring Formula:**

* **Positives**

    * Base Score: 1000

    * Indicating data received: 50 (I)

    * For each blocks picked/gripped(given once for each block): 100 (Q)

    * Successful identification of weight: 150 (P)

    * Dropping off at the correct zone: 150 (R)

    * Time factor: 2(T in seconds)

* **Negatives**

    * Incorrect identification of weight: -50 (A)

    * Placing in incorrect zone: -50 (C)

    * Droping the block each time: -30 (L)

    * Touching obstacles: -50 (D)

    * For each timeout: -100 (O)

    * For each restart: -150 (S)

**Formula:**

`1000 + 50*I + 100*(Q) + 150*(P + R) + 2*T - 30*L - 50 *(A + C + D) - 100*O - 150*S`

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

For relevant tutorials check [ROBOTIX TUTORIALS](/tutorial/).

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
