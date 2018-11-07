---
layout: post
title: 'Nuke Trench'
subTitle: 'Semi-Autonomous Event'
logo: /img/event/nuke_trench/logo.png
actions:
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    link: '/img/event/nuke_trench/DIY_nuke_trench.png'
  -
    text: 'T'
    caption: 'Tutorial'
    link: '../../tutorial/event/nuke_trench/'
---


#### Introduction

It is the era of merciless trench warfare, an alpha team has located the nuclear bomb which is embedded somewhere in the trench. Our goal is to decipher the signals left by the alpha team throughout the trench and remove the bomb.

#### USP

* Navigating in arena using **LANE / TRENCH** following style robot.

* Reading and interpreting **MORSE** CODE.

* Distinguish **ferromagnetic metals, metals, non-metals.**

#### Problem Statement

To make a semi-autonomous robot which can traverse manually through a trench/lane while simultaneously reading, interpreting the morse code, processing the signals and removing the nuke bomb from the arena which holds certain metallic and ferromagnetic properties.

#### Rules

##### General Rules

* The maximum number of participants allowed per team: 4 people

* The participants will be provided with 220 Volts, 50 Hz standard AC supply.

* Participants will have to arrange for themselves if they require any other power supply for their robot.

* Teams qualifying the first round will go into the second round.

* Teams cannot tinker with their robots inside the arena.

* Participants are expected to make controller cable (5m long) .

* The decision of Team Robotix will be final and binding.

* If we suspect hard coding, we reserve the full right to check the participant’s robot by testing on random arenas and code submission.

* Any team displaying aggressive behaviour or refusing to comply with Team Robotix judgement will be immediately disqualified.

* Wilful damage of the arena may lead to disqualification and a fine.

##### Arena

![](/img/event/nuke_trench/1.png){:.img-responsive}

##### Event Rules

* The robot has to remain within the arena throughout the run.

* Maximum Restarts:
Round 1:1
Round 2:1

* Maximum Timeout:
Round 1:2
Round 2:2

* Restarts will be given only for technical fault in the robot

* Thresholding time of 5 minutes will be given in each round before the run starts.

* The robot has to begin and end its run at the START ZONE and the END ZONE respectively marked in the arena.

* The participants should use a separate led for blinking.

##### Robot Specifications

* The robot must fit in a box of 20cm x 20cm x 15(height)cm with a tolerance of 10% in the dimensions of the robot. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event. However, the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

#### Event Overview

* The arena consists of a 4*4 grid and has specified starting locations.

* Such an arena will have nodes (intersection of paths). Before entering a node the robot will encounter a signal patch.

* The signal patch is placed on the rectangular plank which will be suspended(at height 18cm) by a mechanical support anchored at a side of the plank, the former residing on the downward facing surface of the plank.

* The robot has to analyse cubical boxes which will have metallic, ferromagnetic and non-metallic characteristics.

* The bot can be manually controlled by the participant. While traversing, the robot will encounter a signal patch(containing a morse code) before every node. 

* Morse code with the encrypted data will inform the robot about the path to be followed after reaching a node. 

* In this event, the morse code decryption and metal detection will be autonomous i.e it has to be guided by a microcontroller.

* Participants are allowed to use either a wireless or a wired controller for the robot.

(Detailed overview on the morse code is given in a later part of this documentation, the code used in this event is not the actual morse code but shares some similarity. Future reference to morse code should not be confused with the real one.)

#### Task

The arena will have two types of nodes:-

* **With blockages ahead** :- Blockages are cubical boxes made up of different physical materials as mentioned before, Robot has to remove one block and continue.

* **Without blockages**:- These will be serving as waypoints for the paths.

* Encryption/Decryption:- Signal patch will consist of thick and thin black stripes. In order to retrieve the data one, has to sort the strips based on their thickness.

* Data is stored in a way analogous to 4-bit data storage, for instance (Thick, Thin, Thin, Thick) shall correspond to 1001 in 4-bit representation.

	| Data 			| Code |
	| --- 			| --- |
	| Right 		| 0011 |
	| Left 			| 0101 |
	| Continue/Go straight 	| 0110 |
	| Metal 		| 1001 |
	| Non-metal 	| 1010 |
	| Plastic 		| 1011 |
	| One 			| 1100 |
	| Two 			| 1101 |
	| Three 		| 0111 |

* Sample Morse code

![](/img/event/nuke_trench/2.png){:.img-responsive}
	Deciphered as [thin,thick,thin,thick] ->[0,1,0,1] -> Left

#### Round 1

* This round will be having two blocked nodes and one waypoint*.

* Blocked nodes will have 3 blockages.

* The waypoint will be encountered first and then the rest of the nodes.

* At the waypoint the robot has to scan the code and traverse in the direction which has been retrieved from the code.

* Now in the upcoming nodes, robot has to remove the metallic block from its path and has to reach the end node.

#### Round 2

* This round will be having multiple blocked nodes and waypoints*.

* At the waypoint the robot has to scan the code and traverse in the direction which has been retrieved from the code.

* At the blocked nodes blockages shall be removed. The Robot has to remove the block from its path by placing it behind itself i.e the robot has to lift the block, take a 180 degree turn, place the block, then take another 180 degree turn and continue its trajectory.

* The blockage removal in this round will be of two types:-

  a) Guided by number: - Here the robot doesn't have to scan the blockage.Instead it has to remove the bomb with respect to its position on the edges of the node.
  
  b) Guided by physical properties: - Here the bot has to scan the blockage and thus remove the same.

(Waypoints are the nodes with morse code containing the direction to be followed after the current node.)

##### Sample Run 

![](/img/event/nuke_trench/3.png){:.img-responsive}

#### Scoring

##### Reward

* Traversal without collusion till the end +200 points

* Reading the morse code +450 points    

* Successful metal detection +150 points

* Differentiation between the metal (ferromagnetic) and ordinary metal as well as the non-metallic box. + 500 points.

* Removal in case of number guided blocked node + 150 points

* Removal in case of property guided blocked node + 250 points

#####  Penalties

* Collision with arena(at every collusion) - 50 points.

* Failure in metal detection -50 points

* Failure in reading the morse code -150 points

* Failure to distinguish ferromagnetic metal and ordinary metal as well as the non-metallic box. - 200 points.

* Failure in placing the block up right after removal -50.

#### Arena Specifications

* The outer dimensions of the arena will be 200 cm x 200 cm.

* The length of the shade(signal patch) is 23 cm thus gap for the wires to pass is 5.9 cm.

* The width for the path of the robot is 289 cm.

* Signal patch:
	
	The width of the black strip denoting the “Dot” in the morse code is 2cm.
	
	The width of the black strip denoting the “Dash” in the morse code is 3.5cm.

* Dimensions for the blocks are 6cm x 6cm.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

* Dimensions of the signal patch are to be considered with a maximum tolerance of 5%.

![](/img/event/nuke_trench/4.png){:.img-responsive}

![](/img/event/nuke_trench/5.png){:.img-responsive}

![](/img/event/nuke_trench/6.png){:.img-responsive}

![](/img/event/nuke_trench/7.png){:.img-responsive}

![](/img/event/nuke_trench/8.png){:.img-responsive}

**Links to Tutorials:**

For relevant tutorials check [ROBOTIX TUTORIALS](https://www.robotix.in/tutorial/).

##### Contact

###### Aditi Singh

Email: **[aditi.singh@robotix.in](mailto:aditi.singh@robotix.in)**

Ph. no: **+91 7478085999**

###### Rohit Ner

Email: **[rohit.ner@robotix.in](mailto:rohit.ner@robotix.in)**

Ph. no: **+91 9167401706**
