---
layout: post
title: "Matrix"
subTitle: 'Autonomous Event'
logo: /img/event/flankem/logo.jpg
social:
  - {name: "facebook", link: ""}
excerpt_separator: <!--more-->
---


###Introduction
With emerging trends of swarm robotics surveillance and intelligence and even robotic defense lines, AI is slowly taking over the job of keeping us safe. Robots that intelligently communicate while helping each other in hostile conditions are one step towards this growth, and by small-scaling the exact situation, the event Matrix involves two communicating autonomous robots helping each other navigate an unknown area. With algorithmic skills on the test, this event is sure to draw in brainiacs from all across the region.  
<!--more-->

###USP
 - Wall Following
 - Colour Detection
 - Wireless Communication (optional)  

###Problem Statement
Build a duet of colour sensing autonomous robots that help each other in finding their way out of an unknown maze.

###Task
The task is achieved by two autonomous bots, let us say A and B. The bot A is in a command room maze while bot B is in a war stricken trench. They have to communicate with each other, preferably wirelessly, while solving a maze in order to complete the task. A has to find switches in a maze for the B to pass through colour coded doors. The doors are simply coloured cardboard pieces that are placed randomly in the arena by organizers. The buttons are also randomly placed coloured cardboard pieces.

###Rounds

####Round 1
- The Bot A is first allowed to take a run on its arena, mapping the position of the all the switches on the maze. Switches are simply coloured wooden planks.
- Time limit for mapping the arena by A is 2 minutes. Taking more time attracts penalty. Time greater than 4 minutes leads to a forced halt.
- After this, a simultaneous A & B run starts where B starts to move in the trench avoiding walls via wall detection. The path is blocked by colour coded doors, activated by the corresponding colour coded switches in A’s arena. Switch activation is denoted by flashing the corresponding LED, after which the organizers remove the door.
- Although there is a single path to a single exit, there are path forks midway, which may lead to dead ends. Such paths are specifically marked with red doors.  Other doors may be green, yellow or blue. 
- Path planning for A has to be incorporated as no. of turns has a direct negative effect on score. No score for turns is present for B.
- Time limit for simultaneous A & B run is strictly 4 minutes.

####Round 2
- The Bot A is first allowed to take a run on its arena, mapping the position and number of the all the coloured switches on the maze.
- After this,  a simultaneous A & B run starts where B starts to move in the trench avoiding walls via wall detection. The path is blocked by colour coded doors, activated by the corresponding colour coded switches in A’s arena. Switch activation is denoted by flashing the corresponding LED, after which the organizers remove the door.
- There are path forks midway, which may lead to dead ends. They are not red coded in round 2. All doors may be green, yellow, red or blue. 
- There are multiple paths leading to an exit zone. Intersections at any point are marked by doors of different colours. Priority is decided by the no of switches left to be activated. The colour with higher number of switches left is the path to take. So if B has to make a choice between a green and blue door, when the number of green and blue switches left in the arena are 3 and 1, then the path with the higher priority door is the better path.
- Two paths that have diverged never converge anywhere except at the exit zone if applicable.
- Turns for both A & B have a direct proportional negative effect on the final score, so following the correct path for both robots minimizes turns and hence leads to better scores.
- Time limit for mapping the arena by A is 2 minutes. Taking more time attracts penalty. Time greater than 4 minutes leads to a forced halt.
- Time limit for simultaneous A & B run is strictly 6 minutes.

###Arena

####Depictive Arena of Round 1 for B

![]({{ site.baseurl }}/img/event/flankem/round1-B.png){:class="img-responsive"}

####Depictive Arena of Round 2 for B

![]({{ site.baseurl }}/img/event/flankem/round2-B.png){:class="img-responsive"}
The following 2-D graphic is a possible configuration for the actual arena:
The graphic assumes 5 Green, 4 Red, 3 Blue and 2 Yellow Doors at the beginning

####Arena for B

![]({{ site.baseurl }}/img/event/flankem/arena-B.png){:class="img-responsive"}

####Arena for A

![]({{ site.baseurl }}/img/event/flankem/arena-A.png){:class="img-responsive"}

####Depictive Arena of both rounds for A

![]({{ site.baseurl }}/img/event/flankem/arena-both-A.png){:class="img-responsive"}

###Dimensions and Specifications
- Both A and B should fit in a 25cm x 25cm x 25cm box. 
- The width of trench in B arena is 35cm.
- The dimensions of wooden doors is 35x25x2cm (width x height x thickness)
- The dimension of wooden switches is 7x20x2cm (width x height x thickness)
- The width of maze line is 3cm and is white in colour, the rest of the arena being black.

###Scoring System

####Base Score: 1000

####Positives
- Completing the Maze: +500
- Time Bonus for Mapping Complete Arena Under 2 Minutes: Time Left in Seconds
- Time Bonus for Simultaneous Run: Time Left in Seconds
- Blinking Correct LED: +100 each

####Negatives
- Blinking Incorrect LED: -150 each
- Bumping into wall: -25 each
- Opening door without button pressed: -200
- Mapping Arena in more than 2 Minutes: -100
- Score for turns (Bot B) (Round 2): (Min. Turns Possible-No. of Turns Taken )* 50
- Score for turns (Bot A) (Round 1 & 2): (-No. of Turns Taken )* 50

###Contact

####Siddharth Jha
**(91) 9316058276**  
**siddharth@robotix.in**

####Vraj Parikh
**(91) 8000981472**  
**vraj@robotix.in**