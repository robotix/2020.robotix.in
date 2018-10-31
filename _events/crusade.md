---
layout: post
title: 'Crusade'
subTitle: 'Computer Vision Event'
logo: /img/event/crusade/logo.png
actions:
---



#### USP

* Lane following

* Colour detection

* Blinking 	LED frequency detection

* Autonomous traversal

#### Problem Statement

To build an image processing robot that is capable of traversing in a lane while detecting glowing LEDs on its way and deciding its path according to the frequencies of the blinking LEDs.


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

* Any team displaying aggressive behaviour or refusing to comply with Team Robotix judgement will be immediately disqualified.

* Wilful damage of the arena may lead to disqualification and a fine.

**Event Rules:**

* The robot has to remain within the arena throughout the run.

* Maximum Restarts:

    * Round 1: **1**

    * Round 2: **1**

* Maximum Timeouts:

    * Round 1: **2**

    * Round 2: **2**

    * Maximum duration of a timeout is 2 mins only.

* Restarts will be given only for technical fault in the robot

* Thresholding time of **20 minutes** will be given in each round before the run starts.

* The robot has to begin and end its run at the **START ZONE** marked in the center of the arena.

* The participants should use a separate LED for blinking.

**Robot Specifications:**

* The robot must fit in a box of **20cm x 20cm x 20cm** with a tolerance of 10% in the dimensions of the robot. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event. However, the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.



#### Task

##### Round 1

* The arena will have plain black walls and white lanes with constant width. 

* The robot has to use an onboard camera to get the video feed of the arena. 

* There will be LEDs of the same color on the walls of the arena, along the path, some of which will be glowing.

* The task of round one is to navigate on the lane without coming in contact with the walls and to identify the glowing LEDs on the walls along the path. 

* When the robot reaches a glowing LED, it has to blink the LED on it, to indicate identification. 

* This round will last for 6 minutes. 

* The robot has to start its run from the START ZONE marked on the arena and end it at the END ZONE marked on it.

**Note:** 

The position of the START and END ZONE will be marked at the start of the run. The participants will have to determine the RGB values of the color of the LED, at the time of thresholding before beginning the run.

#### Arena

![](/img/event/crusade/round1_top.png){:.img-responsive}

![Sample of the given image](/img/event/crusade/round1_isometric.png){:.img-responsive}

**Note:**

* The yellow and green squares represent the START and END points in the arena. The bot has to traverse on the only open path from the START to the END.

* The red circles represent the glowing LEDs.

* The number of glowing LEDs, the length of the path and the number of turns will be the same for all the participants.

 **Dimensions:**

* The dimensions of the arena will be 3m x 2.1m

* The width of the lane will be 40cm throughout.



##### Scoring

* For correct identification of a glowing LED, that is blinking its own LED on reaching the glowing one on the arena: +100.


* For pausing the run and turning the bot manually at a corner: -150.

* For colliding with the wall around the lane: -50.

* For blinking the LED anywhere else on the lane except for the position in front of a glowing LED: -75.

* For timeout: -50

* For restart: -100

* Time bonus: + [360 - (time taken in sec)] x 3 points (would be given only if all the glowing LEDs are identified successfully, all the turns are accomplished without any manual help and the robot ends its run at the end zone).

#### Round 2

* The arena will have plain black walls and white lanes with constant width. 

* The robot has to use an onboard camera to get the video feed of the arena. 

* There will be LEDs of the same color on the walls of the arena, along the path, some of which will be glowing. 

* There will be T-junctions in the path of the robot. 

* There will be LEDs blinking with different frequencies on the floor of each side of the junction. 

* The colour of these LEDs will be different from those on the walls.

* The task of round two is to navigate on the lane without coming in contact with the walls and to identify the glowing LEDs on the walls along the path. 

* When the robot reaches a glowing LED, it has to blink the LED on it, to indicate identification. 

* On reaching a T-junction it has to decide which way to go depending on the frequencies of the blinking LEDs. 

* This round will last for 6 minutes. 

* The robot has to start its run from the START ZONE marked on the arena and end it at the END ZONE marked on it.


**Note:** 

The position of the START and END ZONE will be marked at the start of the run. Whether the robot has to go in the direction of the LED blinking with higher frequency or lower frequency will be told at the start of the run. The participants will have to determine the RGB values of the color of the LEDs on the walls and on the floor, at the time of thresholding before beginning the run.


#### Arena

![](/img/event/crusade/round2_top.png){:.img-responsive}

![Sample of the given image](/img/event/crusade/round2_isometric.png){:.img-responsive}

**Note:**

* The yellow and green squares represent the START and END points in the arena.

* The red circles represent the glowing LEDs.

* The blue circles represent the blinking LEDs, whose frequencies the bot has to detect to decide which way to go at the T-junction.

* The number of glowing LEDs, the length of the path and the number of turns will be the same for all the participants.

**Dimensions:**

* The dimensions of the arena will be 3m x 2.1m.

* The width of the lane will be 40cm throughout.


##### Scoring

* For correct identification of a glowing LED, that is blinking its own LED on reaching the glowing one on the arena: +100.


* For choosing the correct path at a T-junction: +200.

* For making a turn correctly at corners: +150.


* For pausing the run and turning the bot manually at a corner: -150.


* For choosing the incorrect path at a T-junction: -100.


* For colliding with the wall around the lane: -50.
 
* For blinking the LED anywhere else on the lane except for the position in front of a glowing LED: -75.
 

* For timeout: -50

* For restart: -100

* Time bonus: + [360 - (time taken in sec)] x 3 points (would be given only if all the glowing LEDs are identified successfully, all the turns are accomplished without any manual help and the robot ends its run at the end zone).

**Note:** Whenever the bot collides with the wall, the timer will be paused and the robot will be placed in the center of the lane along the line perpendicular to the wall at the same position.


##### Example Scoring

**Case 1**: Robot identifies all the glowing LEDs on the walls and makes the correct turn at each of the corners


Let’s say that there are 3 corners in the path and 5 LEDs on the walls, out of which 4 are glowing, and the robot turns correctly at each corner, while also blinking its LED every time when it reaches a glowing LED in its way, without blinking it anywhere else on the arena and let’s suppose that there are still 30 seconds left, then the corresponding scoring will be:

* +3 x 150 = 450 points for correctly turning at each corner


* +4 x 100 = 400 points for correctly identifying each glowing LED

* +(360 - 330) x 3 = 90 points as time bonus


Hence, the final score tally will be 940 points.


**Case 2**: Robot turns correctly at two of the corners, turns manually at the third one and identifies only 3 of the glowing LEDs. Let’s assume that there is no time left, then the corresponding scoring will be:


* +2 x 150 = +300 for turning correctly at 2 corners


* -1 x 150 = -150 for turning manually at one corner

* +3 x 100 = +300 for identifying 3 glowing LEDs


* 0 point for time bonus

Hence, the final score tally will be 450 points.

**Case 3**: Robot turns correctly at the first two corners and terminates its run at the third corner at which it was not able to turn. Also, suppose there were 3 glowing LEDs before the third corner that it detected correctly. Let’s assume that there is still 1 minute left, then the corresponding scoring will be:


* +2 x 150 = +300 for turning correctly at 2 corners

* +3 x 100 = +300 for identifying 2 glowing LEDs

* 0 point for time bonus

Hence, the final score tally will be 600 points.




##### Contacts

###### Shubhika Garg

Email: **[shubhika.garg@robotix.in](mailto:shubhika.garg@robotix.in)**

Ph. no: **+91 7478074111**

###### Vidit Goel

Email: **[vidit.goel@robotix.in](mailto:vidit.goel@robotix.in)**

Ph. no: **+91 9752835400**

###### Anvee Naik

Email: **[anvee.naik@robotix.in](mailto:anvee.naik@robotix.in)**

Ph. no: **+91 7430944999**