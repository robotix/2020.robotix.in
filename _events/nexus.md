---
layout: post
title: 'Nexus'
subTitle: 'Computer Vision Event'
logo: /img/event/nexus/logo.png
actions:
  -
    text: 'T'
    caption: 'Tutorial'
    link: '../../tutorial/event/nexus/'
---

#### USP

* Colour Detection

* Obstacle Avoidance

* Pattern Detection

* Onboard Camera

#### Problem Statement

To build a robot that uses an onboard camera to detect a path formed by circles and traverses on it autonomously and is capable of shape detection and barcode reading.


#### Rules

**General Rules:**

* The maximum number of participants allowed per team: 4 people

* The participants will be provided with *220 Volts, 50 Hz* standard AC supply.

* Participants will have to arrange for themselves if they require any other power supply for their robot.

* On board processing units, if any, should fit within the dimensional constraints specified. Processing outside the arena is recommended, either wired or wireless.

* Teams qualifying the first round will go into the second round.

* Teams cannot tinker with their robots inside the arena.

* USB extenders (*5m* long) will be provided.

* The decision of Team Robotix will be final and binding.

* If we suspect hard coding, we reserve the full right to check the participant’s robot by testing on random arenas and code submission.

* For solving the PS no other sensor apart from a monocular camera is allowed.

* Only one onboard camera can be used. Participants are not allowed to use any other camera elsewhere or multiple cameras onboard.

* Any team displaying aggressive behaviour or refusing to comply with Team Robotix judgement will be immediately disqualified.

* Wilful damage of the arena may lead to disqualification and a fine.

**Event Rules:**

* Maximum Restarts:

    * Round 1: **1**

    * Round 2: **1**

* Maximum Timeouts:

    * Round 1: **2**

    * Round 2: **2**

    * Maximum duration of a timeout is 2 mins only.

* Restarts will be given only for technical fault in the robot

* Thresholding time of **20 minutes** will be given in each round before the run starts.

* The participants should use a separate LED for blinking.

**Robot Specifications:**

* The robot must fit in a box of **20cm x 20cm x 20cm** with a tolerance of 10% in the dimensions of the robot. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event. However, the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.


#### Task

##### The Barcode
![](/img/event/nexus/n1.jpg){:.img-responsive}

The barcode consists of 4 white strips which are either thin (10mm wide) or thick (20 mm wide) separated by black tape. Reading from left to right, each white strip corresponds to 1-bit which is either a 0 or 1. The total width of the barcode is always 100mm. The barcode can represent binary numbers from 0000 to 1111 (which correspond to 0-15 in decimal number system).

##### Round 1

* The arena consists of 2-D green circles and 2D non-green triangles and quadrilaterals. The circle will be of a 10cm diameter with an approximately equal 20cm distance between the centres of consecutive circles.

* The robot makes has to move from the start point to the endpoint moving along the circles. It has to move through each circle without straying from the path. The path is defined by always following the next closest circle.

* The path branches after each 2D obstacle which can be either a triangle or a quadrilateral based on which, the bot has to decide which direction to proceed in- right or left. 

* If it’s a triangle, the bot has to proceed towards the left and towards right if it’s a quadrilateral. It also has to blink an LED once if it’s a triangle and twice if it’s a quadrilateral obstacle. 

##### Round 2

* In the second round, the distance between the circles will vary and not remain uniform. Further, obstacles, which will also be quadrilaterals, will contain a barcode that the bot has to read.

* The paths branching from each of these obstacles will be of different colors. Depending on the information scanned, if the path to be followed is green, the bot has to blink an LED once, twice if it is blue and thrice if it is red.

* Then it has to scan the paths and has to either turn right, left or keep moving forward.

* If it’s a triangle, the bot has to proceed towards the left and towards right if it’s a quadrilateral. It also has to blink an LED once if it’s a triangle and twice if it’s a quadrilateral obstacle. 

**No. on node**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Path to be chosen**<br /> 
0,3,6,9,12,15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Green path <br /> 
1,4,7,10,13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Red path <br /> 
2,5,8,11,14&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Blue path <br /> 

The last node will be a plain black square. Taking the average of the numbers scanned so far, it has to either turn right, left or move forward. <br /> 

**Average**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Turn**<br /> 
0-5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forward<br />
6-10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right<br /> 
11-15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Left

#### Arena

##### Round 1

![](/img/event/nexus/n2.png){:.img-responsive}

##### Round 2

![](/img/event/nexus/n3.png){:.img-responsive}

##### Scoring

##### Round 1

* Moving to the next closest circle: Landing on the circle: +20 points; if the circle is on a curved path: +40 points

* Detecting the shape of the obstacle: +200 points

* Correct path identification after obstacle encounter: +200 points

* Blinking LED correctly no. of times: +100 points

* Time Bonus : +300 - Time taken(in s) 

* Not moving to the next closest circle: -10 points

* Incorrect shape detection of obstacle: -50 points

* Incorrect turn after obstacle encounter: -100 points

* Slipping out of the line (based on Team Robotix discretion): -50 points

* Restart: -100 points

* Timeout: -50 points

##### Round 2

* Moving to the next closest circle: Landing on the circle: +20 points; if the circle is on a curved path: +40 points

* Detecting the shape of the obstacle: +200 points

* Correct path identification after obstacle encounter: +200 points

* Blinking LED correctly no. of times: +100 points

* Time Bonus : +300 - Time taken(in s) 

* Correct identification of path color after reading the barcode: +100 points

* Not moving to the next closest circle: -10 points

* Incorrect shape detection of obstacle: -50 points

* Incorrect turn after obstacle encounter: -100 points

* Incorrect turn after black node: -100 points

* Slipping out of the line (based on Team Robotix discretion): -50 points

* Restart: -100 points

* Timeout: -50 points


##### Contacts

###### Shivangi Srivastava

Email: **[myspace.shivangi@gmail.com](mailto:myspace.shivangi@gmail.com)**

Ph. no: **+91 9475853503**

###### Mohit Singh

Email: **[mohitsiitkgp17@gmail.com](mailto:mohitsiitkgp17@gmail.com)**

Ph. no: **+91 7728991073**

###### Tanya Sneh

Email: **[tanyasneh@gmail.com](mailto:tanyasneh@gmail.com)**

Ph. no: **+91 8942053975**