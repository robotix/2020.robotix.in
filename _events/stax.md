---
layout: post
title: 'Stax'
subTitle: 'Autonomous Event'
logo: /img/event/stax/logo.png
actions:
  -
    icon: 'facebook'
    caption: 'Discussion Forum'
    url: 'https://www.facebook.com/groups/staxevent/about/'
    target: '_blank'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/stax'
    target: '_blank'
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    url: '/img/event/stax/stax.png'
    target: '_blank'
  -
    icon: 'youtube'
    caption: "Tutorial Video"
    url: https://www.youtube.com/watch?v=430rpuLWCMM
    target: '_blank'
  -
    text: 'P'
    caption: 'Total prize money worth Rs 45,000'
---


#### Introduction

Consider the situation of a factory where heavy machine parts are kept in a random manner and need to be kept correctly for assembling. An autonomous robot will not only make the job easy but also optimize the number of movements.

#### USP

* Autonomous Traversal (Line Following)

* Colour Identification

* Sorting Algorithm

#### Problem Statement

To build a robot which can **rearrange** blocks of different colours from a stack in a pattern by **identifying the colours** simultaneously moving across the stacks using **line following**.

#### General Description and Event Setup

* There will be cubical blocks of **four** different colours.

* The robot has to identify the desired sequence of the block by means of colour detection, while traversing across the arena using line following traversal algorithm.

* The robot will then pick a block from the main stack and identify its colour.

* The robot has to use the side stacks for the intermediate steps involved, in order to achieve a particular sequence, given in advance by Team ROBOTIX.

#### Arena

![](/img/event/stax/image_2.png){:.img-responsive}


##### Arena specifications

* The outer dimensions of the arena will be **505 cm x 360 cm**.

* Each stack will be a rectangle of inner dimensions **80 cm x 20 cm** with a width of **10 cm** on all sides.

* The line width for facilitating line following mechanism will be **5 cm**.

* Dimensions of the arena are to be considered with a maximum tolerance of **10%**.

![](/img/event/stax/image_3.png){:.img-responsive}

![](/img/event/stax/image_4.png){:.img-responsive}

![](/img/event/stax/image_5.png){:.img-responsive}

![](/img/event/stax/image_6.png){:.img-responsive}

![](/img/event/stax/image_7.png){:.img-responsive}

##### Block Specifications

**Cubical:**  6cm X 6cm X 6cm.

**Weight:** The weight of the blocks will be somewhere between **60 to 80 grams**.

**Handle:** A handle will be made on top of each block to facilitate lifting as shown in the figure. A free space of **1.5 cm x 6 cm** will be provided inside each handle.

![](/img/event/stax/image_8.png){:.img-responsive} 

![](/img/event/stax/image_9.png){:.img-responsive}

![](/img/event/stax/image_10.png){:.img-responsive}

![](/img/event/stax/image_11.png){:.img-responsive}

 

##### Robot Specification

* The robot must fit in a box of **30cm x 30cm x 30cm** with a tolerance of **10%** in the dimensions of robot.

* No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event. However, the dimensions may change during the course of the run.

##### Event Rules

* The robot should traverse the arena only by using the **line following mechanism**.

* The robot should detect the desired sequence of the blocks as well as the order of the blocks arranged initially, by using colour detection.

* The robot need not show the detected/desired sequence but it should show **exclusive identification** for block of each color detected. Eg. using different LEDs for different blocks.

* Points will be awarded for correct **identification** and **deposition** of the blocks at the end of the run. **Correct identification:** Whether the colour of block detected is correct. **Deposited Objects:** Blocks deposited must be in the correct sequence.

* Participants are **not** allowed to **drag** the blocks while moving them. They must be lifted from ground level, clearly. Any call of Team ROBOTIX will be final and binding.

* While **picking** and **placing** any block the robot should not make contact with any other unsegregated blocks kept in the arena. There will be a penalty for each contact. However, you can slightly displace a block while trying to pick it.

##### Restarts and Timeouts

* A maximum of **2 Timeouts** of **1 minute** each may be taken. **Penalty** will be awarded for each timeout and robot will start from its stopping position on the arena.

* The participant’s robots can have a maximum of **2 restarts**. A penalty will be imposed on the team for every restart that they take.

* After the restart, the participant’s robot will be set to its **initial** position. Timer will be set to zero and the run will start afresh with the addition of the **penalty** for **restart**.

* A timeout can be taken **anytime** at the user’s discretion.

* A restart can **only** be taken if there is a genuine **technical** fault in the robot. Team ROBOTIX may refuse a restart if the reason does not sound genuine enough, and their decision will be binding and final.

#### Round 1

##### Task

* There will be a total of **4 blocks** in **random** order.

* The participant will be **allowed to input the initial order of blocks** in their robot, before the run starts.

* The robot has to **identify** the desired sequence of the blocks from the colour indicators placed on each turn before approaching the main stack.

* The first indicator will show the colour of the **innermost block** and sequentially the other indicators will show the colour of further blocks.

* The robot has to pick and place the blocks one at a time to **rearrange** the blocks in the main stack with the help of side stacks.

* The robot has to **return** to the node in front of the main stack and **indicate the completion of the task**.

**Note:** The data input (initial sequence of blocks in main stack) to the robot in the first round will be allowed by means of either wireless communication or by changing the parameters in the code burnt on the microcontroller. There are no extra points awarded or deducted for this choice.

##### Round rules

* A maximum of **4 minutes** will be given to complete this round. The restart can only be taken before **3 minutes** into the round.

* Maximum number of Time-outs allowed: **2** (1 min each).

* Maximum number of Restarts allowed: **2**.

**NOTE:** Restarts will be given only for technical fault in the robot.

##### Scoring Formula

* **Positives**

    * Base score: **1000**

    * For each block picked/gripped (given once for each block): **100** (Q)

    * Successful identification of colour: **150** (P)

    * Completion of Job: **150** (R)

    * Time factor: **2**(T in seconds)

* **Negatives**

    * Incorrect identification of colour: **-50** (A)

    * Dropping the block each time: **-30** (L)

    * For each timeout: **-100** (O)

    * For each restart: **-150** (S)

**Formula:**

{% highlight ruby %}
1000 + 100*(Q) + 150*(P + R) + 2*T - 30*L - 50*A - 100*O - 150*S
{% endhighlight %}

#### Round 2

##### Task

* There will be a total of **6 blocks** in **random** order out of which **2 blocks** will be **waste blocks** of colour **white** and **black**.

* The participant will **NOT be allowed to input the initial order of blocks** in their robot.

* The robot has to **identify** the desired sequence of the blocks from the colour indicators placed on each turn before approaching the main stack.

* The first indicator will show the colour of the **innermost block** and sequentially the other indicators will show the colour of further blocks in order.

* The robot has to **detect** the colour of the blocks in the main stack, as the **initial sequence** of the blocks becomes accesible to the robot.

* The robot has to pick up and place the blocks, one at a time to **rearrange** them in the main stack with help of side stacks.

* The robot has to **dispose** the **waste blocks** into the **side stacks** meanwhile arranging the required blocks in the main stack.

* The robot has to **return** to the node in front of the main stack and **indicate the completion of the task**.

##### Round rules

* A maximum of **6 minutes** will be given to complete this round. The restart will only be given before **4:30** into the round.

* Maximum number of Time-outs allowed: **2 (1 min each).**

* Restarts allowed: **2**

**NOTE:** Restarts will be given only for technical fault in the robot.

##### Scoring Formula

* **Positives**

    * Base score: **1000**

    * For each block picked/gripped (given once for each block): **100** (Q)

    * Successful identification of colour: **150** (P)

    * Completion of Job: **150** (R)

    * Time factor: **2**(T in seconds)

* **Negatives**

    * Incorrect identification of colour: **-50** (A)

    * Dropping the block each time: **-30** (L)

    * For each timeout: **-100** (O)

    * For each restart: **-150** (S)

    * Leaving a waste block in main stack: -**150**(D)

**Formula:**

{% highlight ruby %}
1000 + 100*(Q) + 150*(P + R) + 2*T - 30*L - 50 *A - 100*O - 150*(S + D)
{% endhighlight %}
##### General Rules

* Maximum number of participants allowed per team: **4 people**.

* The participants will be provided with **220 Volts, 50 Hz** standard AC supply.

* Participants will have to arrange for any other power supply required for their robot.

* Teams cannot tinker with their robots during the run.

* [LEGO kits](http://en.wikipedia.org/wiki/Lego_Mindstorms) or its spare parts are not allowed.

* The decision of the Team Robotix will be **final** and **binding**.

* The rules are subject to change.

It is suggested to the participants to try making a wireless robot, powered by a battery on-board.

**Links to Tutorials:**

For relevant tutorials check [ROBOTIX TUTORIALS](https://www.robotix.in/tutorial/).

##### Contact

###### Vivek Mudgal

Email: **[vivek.mudgal@robotix.in](mailto:vivek.mudgal@robotix.in)**

Ph. no: **+91 7407777007**

###### Shivang Agrawal

Email: **[shivang.agrawal@robotix.in](mailto:shivang.agrawal@robotix.in)**

Ph. no: **+91 9455538734**

###### Aman Chandra

Email: **[aman.chandra@robotix.in](mailto:aman.chandra@robotix.in)**

Ph. no: **+91 8967126457**

