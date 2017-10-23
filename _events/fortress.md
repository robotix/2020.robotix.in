---
layout: post
title: 'Fortress'
subTitle: 'Computer Vision Event'
logo: /img/event/fortress/image.jpg
---

#### Introduction

A nuclear war just affected our planet. And the robots are now trying to save the remaining humans in a habitable environment by building an impenetrable fortress. For doing this they have to collect all the suitable blocks in proper order in a given time before they lose any more lives.

#### USP:

* Template matching

* Pattern Recognition

* Image segmentation

* Autonomous traversal

#### Problem Statement

Build an image processing robot that can recognise useful patterns by pattern recognition while avoiding other obstacles. The video feed of the arena will be given by an overhead camera.

#### Rules

**General Rules:**

* The maximum number of participants allowed per team: 4 people

* The participants will be provided with *220 Volts, 50 Hz* standard AC supply.

* Participants will have to arrange for themselves if they require any other power supply for their robot.

* On board processing units, if any, should fit within the dimensional constraints specified. Processing outside the arena is recommended, either wired or wireless.

* Teams qualifying the first round will go into the second round.

* Teams cannot tinker with their bots inside the arena.

* USB extenders (*5m* long) will be provided.

* There will be maximum of 2 restarts and 3 timeouts. The timeout can be of a maximum duration of 2 minutes and the bot can be restarted after a maximum of 5 minutes.

* The decision of Team Robotix will be final and binding.

* If we suspect hard coding, we reserve the full right to check the participant’s robot by testing on random arenas and code submission.

* Any team displaying aggressive behaviour or refusing to comply with Team Robotix judgement will be immediately disqualified.

* Wilful damage of the arena may lead to disqualification and a fine.

**Event Rules:**

* The robot has to remain within the arena throughout the run.

* Maximum Restarts:

    * Round 1: **1**

    * Round 2: **2**

* Maximum Timeouts:

    * Round 1: **2**

    * Round 2: **2**

    * Maximum duration of a timeout is 2 mins only.

* Restarts will be given only for technical fault in the bot

**Robot Specifications:**

* The robot must fit in a box of **25cm x 25cm x 25cm** with a tolerance of 10% in the dimensions of robot. No part/mechanism of/on the bot should exceed the given dimensions before the commencement of the event. However the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

* A marker of dimension **20cm x 10cm** having two colour scheme will be provided. However, the participants are free to use their own markers.

#### Task:

##### Round 1

The arena is plain black with some shapes of same color on it. There would be an overhead camera which would provide a video feed to the bot. In the arena all the shapes will be made of a specific number of squares and will have the same area. 

 The participants will also be given an image which will comprise of the same number of shapes but they will be of different sizes and different colours.The shapes will have the same orientation in both the image and the arena.

The task of round one is to identify the  shapes present in the arena corresponding to the shapes in the image by performing pattern recognition. The colour of each shape in the image represents a serial number of that shape and the bot has to go to each shape in the ascending order of serial number. When it identifies that certain shape in the arena it has to go to that shape and has to blink the LED the number of times equal to the serial number of that shape. This round will last for 4 minutes.

**Note:**The serial number corresponding to a colour will be provided at the start of the run. And the RGB values of the colours of the shapes in the images will also be provided.

#### Arena:

**Round 1:**

![](/img/event/fortress/image_1.png){:.img-responsive}

**Sample of the given image**

![](/img/event/fortress/image_2.png){:.img-responsive}

 **Dimensions:**

* The dimensions of the arena will be *3m x 3m*.

* The dimensions of the squares of which the shapes will be made of  will be *10cm x 10cm*.

* Standard marker provided will have two squares of colours red and green. However participants are free to use a marker of their own choice.

##### Scoring

* For correct identification of each shape, that is blinking the LED correct number of times corresponding to that shape : +100 .

* For correct identification of a shape in the wrong order: -50 .

* For incorrect identification of a shape: -100.

* For blinking on anywhere else on the map except for the shapes: -75

* For timeout: -50

* For restart: -100

* Time bonus: + [300 - (time taken in sec)] x 10 points if all the shapes are identified successfully.

#### Round 2

The arena is plain black with some shapes of same color on it. There would be an overhead camera which would provide a video feed to the bot. In the arena all the shapes will be made of a specific number of squares and will have the same area. There will be obstacles on the arena. Obstacles will have the same area as that of shapes.

 The participants will also be given an image which will comprise of the same number of shapes but they will be of different sizes and different colours.The shapes will have **different** orientation in  the arena than the image.

The task of round two is to identify the  shapes present in the arena corresponding to the shapes in the image by performing pattern recognition.And the colour of each shape in the image represents a serial number of that shape and the bot has to go to each shape in the ascending order of serial number and when it identifies that certain shape in the arena it has to go to that shape and has to blink the LED the number of times equal to the serial number of that shape. The bot has to avoid going over the obstacles in the arena or identifying them as one of the shapes in the image. This round will last for 4 minutes.

**Note:**The serial number corresponding to a colour will be provided at the start of the run. And the RGB values of the colours of the shapes in the images will also be provided.

.

#### Arena 

**Round 2:**

![](/img/event/fortress/image_3.png){:.img-responsive}

**Sample of the given image**

![](/img/event/fortress/image_4.png){:.img-responsive}

**Dimensions:**

* The dimensions of the arena will be *3m x 3m*.

* The dimension of the squares will be *10cm x 10cm*.

* Standard tracker provided will have two squares of colours orange and pink. However participants are free to use a marker of their own choice.

##### Scoring

* For correct identification of each shape, that is blinking the LED correct number of times corresponding to that shape: +100 .

* For correct identification of a shape in the wrong order: -50.

* For incorrect identification of a shape: -100.

* For blinking anywhere on other on the map except for the shapes: -75

* For identifying an obstacle as one of the shapes: -100.

* For going over an obstacle: -75

* For timeout: -50

* For restart: -100

* Time bonus: + [300 - (time taken in sec)] x 10 points if all the shapes are identified successfully.

##### Example Scoring

**Case 1**: Robot identifies all the shapes correctly in the correct priority order

Let’s say that there are 5 shapes in the arena and the bot identifies all the correct shapes correctly in the correct priority order and let’s suppose that there is still 30 seconds left, then the corresponding scoring will be:

* + 5 x 100 = 500 points for correct identification in correct priority order

* + (300 - 270) x 10 = 300 points as time bonus

Hence the final score tally will be 800 points.

**Case 2**: Robot identifies 5 shapes such that it identifies the first shape then the second shape then the third shape then the fifth shape then the fourth shape that is it has correctly identified all the shapes but the order of identification is 1 -> 2 -> 3 -> 5 -> 4  .Let’s assume that there is no time left, then the corresponding scoring will be:

* +3 x 100 for identifying the first three shapes correctly in the correct order

*  + 100 - 50 = + 50 for correct identification of the the fifth shape (that is by blinking led 5 times on that shape) in incorrect order

*  + 100 - 50 = + 50 for correct identification of the fourth shape in incorrect order

* 0 point for time bonus

Hence the final score tally will be 400 points.

**Case 3**: Robot is able to identify only 3 out of 5 shapes correctly such that it identifies the first shape then the second shape and then the fourth shape. Hence the order of identification is 1 -> 2-> 4 and it is not able to identify the third and fifth shape. In such a case the bot will be given no time bonus and hence the corresponding scoring will be:

*  + 2 x 100 = 200 for correct identification of the first two shapes

* + 100 - 50 = 50 for correct identification in incorrect order for the fourth shape

* 0 point for time bonus

Hence the final score tally would be 250 points

**Case 4** : Robot is correctly able to identify 3 out of 5 shapes and the remaining two shapes are identified incorrectly. Let’s assume it identifies the first three shapes correctly and then identifies the fifth shape as the fourth one and the fourth one as the fifth shape.The bot will be given no time bonus in such a case. Then the corresponding scoring will be:

* + 3 x 100 = +300 for correct identification of the first three shapes

* - 2 X 100 = -200 for incorrect identification of the last two shapes

* 0 point for time bonus 

Hence the final score tally will be 100 points.

##### Contact:

###### Swadha Gupta

Email: **[swadha.gupta@robotix.in](mailto:swadha.gupta@robotix.in)**

Ph. no: **+91 9425563726**


