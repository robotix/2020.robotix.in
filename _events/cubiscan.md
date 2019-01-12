---
layout: post
title: 'Cubiscan'
subTitle: 'Autonomous Event'
logo: /img/event/cubiscan/logo.png
actions:
  -
    icon: 'facebook'
    caption: 'Discussion Forum'
    link: 'https://www.facebook.com/groups/cubiscanevent/'
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    link: '/img/event/cubiscan/DIY_cubiscan.png'
  -
    text: 'T'
    caption: 'Tutorial'
    link: '../../tutorial/event/cubiscan/'
  -
    icon: 'youtube'
    caption: 'Tutorial Video'
    link: https://www.youtube.com/watch?v=4Ma6qa9Aof0&t=0s&index=2&list=PLzio60ZRzGwZnBalC0uoKlUgkN17uYWJp
  -
    text: 'P'
    caption: 'Total prize money worth Rs 45,000'
  -
    text: 'R'
    caption: 'Register'
    link: '/blog/registration-for-robotix-2019/'
  -
    text: 'F'
    caption: 'F.A.Q.'
    link: '/event/cubiscan/faq/'
  -
    text: 'L'
    caption: 'Component List'
    link: '/event/cubiscan/components/'
---


#### Introduction

The labyrinth to the National Treasure ain’t easy, and definitely beyond our scope because it’s entrapped in debris. Furthermore, the gate to the treasure is opened only by knowing the correct volume of blocks of specific physical characteristics, which perhaps shows skilled ancient architecture. We need to build up a bot on which this engulfing task can be assigned.

#### USP

* Detecting dimensions of objects (Height & Width)

* Line following

* Dual axis traversal of sensor(s)

#### Problem Statement

To Build a robot capable of detecting the dimensions of the block to estimate the volume of the block and then indicate the increasing order of volume of blocks.

#### General Description and Event Setup

* There will be blocks in the arena each of different height and width.The depth will also vary for the 2nd round. The bot has to measure the height and width of each blocks.(depth as well for 2nd round).

* A finish zone will be present in the centre of the arena where the bot has to reach at the end and show the increasing order of volume of the blocks by blinking LEDs present on the bot.





#### Arena

##### Round1

![](/img/event/cubiscan/round1.png){:.img-responsive}

**Note** - The red cross indicates that the bot is not allowed to enter that node.

![](/img/event/cubiscan/round1.1.png){:.img-responsive}
![](/img/event/cubiscan/round1.2.png){:.img-responsive}

**Note** - The distance of the centre of the block will be 8.5 cm from the edge of the line.

##### Round2

![](/img/event/cubiscan/round2.png){:.img-responsive}

![](/img/event/cubiscan/isometric_round2.png){:.img-responsive}

##### Arena specifications

* The outer dimensions of the arena will be 200 x 200 cm.

* There will be a square at the centre.

* The width of the lines will be 3cm.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

##### Block Specifications

* For the 1st round, depth of the blocks will be fixed to 10 cm, whereas the height and width will be variable.

* The dimensions of the blocks may vary from 4cm to 10cm.

* For the 2nd round,height, width and depth of the blocks will vary.

* The weight of the block will be around 100 gms.

* All blocks will be white in colour.

##### Robot Specification

* The robot must fit in a box of **25cm x 25cm x 25cm** with a tolerance of 10% in the dimensions of robot.

* No part/mechanism of/on the bot should exceed the given dimensions before the commencement of the event. However the dimensions can change during the course of the run.


##### Event Rules

* The robot should traverse the arena only by using the **line following mechanism**.

* Points will be awarded for correct **scanning the dimensions of blocks** during the run and **indication of the correct order of the blocks** of the blocks at the end of the run. 

* Participants are **not** allowed to **touch** the blocks while scanning them.  Negative points will be awarded for touching or displacing the block.


##### Restarts and Timeouts

* A maximum of **2 Timeouts** of **1 minute** each may be taken. **Penalty** will be awarded for each timeout and robot will start from its stopping position on the arena.

* The participant’s robots can have a maximum of **2 restarts**. A penalty will be imposed on the team for every restart that they take.

* After the restart, the participant’s robot will be set to its **initial** position. Timer will be set to zero and the run will start afresh with the addition of the **penalty** for **restart**.

* A timeout can be taken **anytime** at the user’s discretion.

* A restart can **only** be taken if there is a genuine **technical** fault in the robot. Team ROBOTIX may refuse a restart if the reason does not sound genuine enough, and their decision will be binding and final.

#### Round 1

##### Task

* There will be four blocks.

* The bot has to traverse through the centre loop and go near each block.

* The bot has to estimate the height and width of the block.

* Thus by measuring the height and width, the approximate volume of the blocks will be calculated.

* Now the bot has to go to the central node of the arena and then blink the LEDs in the order of increasing volume. 

* Maximum time for **Round 1** will be **5 minutes**. A restart will only be given before **3 minutes** into that round.






#### Round 2

##### Task

* There will be four blocks.


* All the three dimensions of the block will be variable.

* Each of the blocks can be accessed from two nodes.


* Thus, the bot has to scan the block from each of the nodes and thus estimate its volume.

* After calculating the approximate volume, the bot has to go to the central node and blink the LEDs in the order of increasing volume.

* Maximum time for **Round 2** will be **8 minutes**. A restart will only be given before **5 minutes** into that round.

**EXAMPLE:**For example, the dimensions of the blocks are as follows- <br>
1st block : 5\*5\*10 , Volume = 250 <br>
2nd block : 10\*8\*8, Volume = 640 <br>
3rd block : 9\*9\*12, Volume = 972 <br>
4th block : 7\*7\*7, Volume = 343 <br>
Thus the correct order of increasing volume would be 1<4<2<3


##### Scoring Formula

* **Positives**

    * Base score: **1000**

    * Reaching each node to scan the block : **50** (Q)

    * Bonus for completing all scanning and reaching centre node : **200** (R)

    * Correct indication of order : **200** (for each pair of blocks) (S)

    * Time Bonus : **F(S) * T** (T is equal to the time remaining in seconds at the end of the run). **F(S) = S - 3** for S>=3 and **F(s) = 0** for S<3. ‘**S**’ has been defined in the above point.

    

* **Negatives**

    * Displacing or touching the block : **100** (A)

    * Incorrect indication of order : **200** (for each pair of blocks) (V)

    * For each timeout: **100** (L) 

    * For each restart: **150** (O)

    * For exceeding time limit : **5** (E), E is the excess time after prescribed time in seconds.

**Formula:**

{% highlight ruby %}
1000 + 50*Q + 200*R + F(S)*T - 100*A - 200*V - 100*L - 150*O - 5*E
{% endhighlight %}

**Note:**

For order indication, blocks will be compared in pairs in terms of relative size. So in total 6 comparisons will be made for 4 blocks. It can be understood with the following examples-

* **Example 1:**

Correct order of blocks - **A>C>D>B** <br>
Blinked order of blocks - **C>B>A>D** <br>

Time taken = **3 minutes**
So here all the 4 blocks are compared in pairs :
1. C>B : positive    
2. C>A : negative    
3. C>D - positive    
4. B>A - negative        
5. B>D - negative    
6. A>D - positive

So net marks earned for block order identification : **3*200 - 3*200 =  0 ** <br>
Time bonus = ** F(S) * (5-3)*60= 0* 2* 60 =0 **
Total=** 0 **

* **Example 2:**

Correct Order of blocks - **A>C>D>B** <br>
Blinked Order of blocks - **C>A>D>B** <br>

Time taken  = **6 minutes**
So here all the 4 blocks are compared in pairs :
1. C>A : negative
2. C>B : positive
3. C>D : positive
4. A>D : positive
5. A>B : positive
6. D>B : positive

So net marks earned for block order identification : **5*200 - 1*200  =  800 ** <br>
Time Bonus = **0** ( as time has exceeded)
Time Exceed penalty =  **5*(6-5)*60 = 300**
Total = **800-300 =500**



##### General Rules

* Maximum number of participants allowed per team: **4 people**.

* The participants will be provided with **220 Volts, 50 Hz** standard AC supply.

* Only **16 bit** microcontrollers or below will be allowed.

* Participants will have to arrange for any other power supply required for their robot.

* Teams cannot tinker with their robots during the run.

* [LEGO kits](http://en.wikipedia.org/wiki/Lego_Mindstorms) or its spare parts are not allowed.

* The decision of the Team Robotix will be **final** and **binding**.

* The rules are subject to change.

It is suggested to the participants to try making a wireless robot, powered by a battery on-board.

**Links to Tutorials:**

For relevant tutorials check [ROBOTIX TUTORIALS](https://www.robotix.in/tutorial/).

##### Contact

###### Rohit Ner

Email: **[rohit.ner@robotix.in](mailto:rohit.ner@robotix.in)**

Ph. no: **+91 9167401706**

###### Aditi Singh

Email: **[aditi.singh@robotix.in](mailto:aditi.singh@robotix.in)**

Ph. no: **+91 7478085999**


