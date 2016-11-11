---
layout: post
title: 'Conquest'
subTitle: 'Computer Vision Event'
logo: /img/event/conquest/logo.png
actions:
  -
    text: 'F'
    caption: 'Discussion Forum'
    url: 'http://bit.do/conquest-event'
    target: '_blank'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/conquest'
    target: '_blank'
  -
    text: 'P'
    caption: 'Total prize money worth Rs 45,000'
---


### Introduction

The robots are trying to take over the world. Hence, they need to build an empire. For achieving this, they have to first collect all possible resources in a given time.

### USP

* Path Planning

* Object Detection

* Colour Detection

* Shape Detection

### Problem Statement

Build an image processing robot that can collect resources like food, wood, stone and gold from the arena while avoiding different obstacles. The video feed of the arena will be given by an overhead camera.

#### Rules

**General Rules:**

* The maximum number of participants allowed per team: 4 people

* The participants will be provided with 220 Volts, 50 Hz standard AC supply.

* Participants will have to themselves arrange for any other power supply required for their robot.

* Onboard processing units, if any, should fit within the dimensional constraints specified. Processing outside the arena is recommended, either wired or wireless.

* Teams qualifying the first round will go into the second round.

* Teams cannot tinker with their bots inside the arena.

* USB extenders (5m long) will be provided.

* There will be maximum of 2 restarts and 3 timeouts. The timeout can be of a maximum duration of 2 minutes and the bot can be restarted after a maximum of 5 minutes.

* The decision of Team Robotix will be final and binding.

* If we suspect hard coding, we reserve the full right to check the participant’s robot by testing on random arenas and code submission.

* Any team displaying aggressive behaviour or refusing to comply with Team Robotix judgement will be immediately disqualified.

* Wilful damage of the arena may lead to disqualification and a fine.

**Event Rules:**

* The robot has to remain within the arena throughout the run.

* Maximum Restarts:
  - Round 1: **1**
  - Round 2: **2**

* Maximum Timeouts:
  - Round 1: **2**
  - Round 2: **2**
  - Maximum duration of a timeout is 2 mins only.

**Robot Specifications:**

* The robot must fit in a box of **25cm x 25cm x 25cm** with a tolerance of 10% in the dimensions of robot. No part/mechanism of/on the bot should exceed the given dimensions before the commencement of the event. However the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance of 10%.

* A marker of dimension **20cm x 10cm** having two colour scheme will be provided. However, the participants are free to use their own markers.

### Task

#### Round 1

The arena is plain black with some colourful shapes in it. There would be an overhead camera which would provide a video feed to the bot. The civilization has a town center in one cell which is the hub of all the activities going on in the map.

The bot has to recognize the various resources present (ie. food and wood) on the map. The town center and all the resources are not obstacles. The bot has to then go on the resource and blink an LED once to &quot;collect that resource and then return to town center to deliver the resource collected and blink an LED there too. One particular resource is exhausted after the resource has been collected twice.

**Note**: Resources are not obstacles.

**Map specifics**:

- Yellow with square shapes represents food.
- Yellow with triangle represents wood.
- Brown colour represents town center.

#### Arena:

**Top View**:
![](/img/event/conquest/4.jpg){:.img-responsive}

**Isometric View**:
![](/img/event/conquest/3.jpg){:.img-responsive}

* The dimensions of the arena will be 3m x 3m.
* The dimension of the squares will be 10cm x 10cm.
* The triangles will be right angled isosceles triangle of the isosceles side 10cm.
* The dimension of the town square will be 25cm x 25cm.
* Standard tracker provided will have two squares of colours orange and pink. However participants are free to use a marker of their own choice.

#### Scoring:
* +100 for food
* +105 for wood
* -75 if the bot blinks on anything other on the map except for the resource or Town Center
* Time bonus: + [360 - (time taken in sec)] x 2 points if all the resources are successfully collected

#### Round 2

The arena is plain black with some colourful shapes in it. There would be an overhead camera which would provide a video feed to the bot. The civilization has a town center in one cell which is the hub of all the activities going on in the map.

The bot has to recognize the various resources present (ie. food and wood) on the map. The arena also contains rivers which are to be treated as obstacles. The bot has to then go to the resource is present and blink an LED once to collect that resource and then return to town center to deliver the resource collected and blink an LED there too.

One particular resource is exhausted after the resource is collected twice. The bot will get 6 minutes and it would have to collect the maximum number of resources. Each resource will have a points. After the bot collects the resource once, its collection of that resource increases by 100. At the end of the time, the bot should at least have 200 units of food and wood otherwise the final point tally will directly be 0.

**Note**: Points and the value of resource are two different things.

**Map specifics**:

* Yellow colour with square shape represents food
* Yellow colour with triangle represents wood
* Blue colour square represents rivers
* Brown colour represents Town Center

#### Arena:

**Top View**:
![](/img/event/conquest/image_1.png){:.img-responsive}

**Isometric View**:
![](/img/event/conquest/image_2.png){:.img-responsive}

* The dimensions of the arena will be 3m x 3m.
* The dimension of the squares will be 10cm x 10cm.
* The triangles will be right angled isosceles triangle of the isosceles side 10cm.
* The dimension of the town square will be 25cm x 25cm.
* Standard tracker provided will have two squares of colours orange and pink. However participants are free to use a marker of their own choice.


#### Scoring:

* +100 for food
* +105 for wood
* -50 if the bot goes over the obstacle
* -75 if the bot taps on anything other on the map except for the resource
* Time bonus: + [360 - (time taken in sec)] x 2 points if all the resources are successfully collected.
<br>

#### Contact:

##### Sourish Ghosh

Email: **[sourish@robotix.in](mailto:sourish@robotix.in)**

Ph. no: **+91 7980623482**

##### Aaditya Sanjay Boob

Email: **[adityasanjay@robotix.in](mailto:adityasanjay@robotix.in)**

Ph. no: **+91 770911333**
