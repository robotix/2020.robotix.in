---
layout: post
title: 'Conquest'
subTitle: 'Computer Vision Event'
logo: /img/event/conquest/logo.png
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

### Task

#### Round 1

The arena is plain black with some colourful shapes in it. There would be an overhead camera which would provide a video feed to the bot. The civilization has a town center in one cell which is the hub of all the activities going on in the map.

The bot has to recognize the various resources present (ie. food, wood, stone and gold) on the map. The town center and all the resources are obstacles on which the bot cannot traverse. The arena also contains mountains and rivers. The bot has to then go to a nearby area (but not exactly) where the resource is present and blink an LED once for two seconds to collect that resource and then return to town center to deliver the resources collected.

That resource is exhausted after the resource is collected twice. The bot will get 6 minutes and it would have to collect the maximum number of resources. Each resource will have a points. After the bot collects the resource once, its collection of that resource increases by 100. At the end of the time, the bot should at least have 200 units of food, wood, stone and gold otherwise the final point tally will directly be 0.

**Note:** Points and the value of resource are two different things.

**Note:** The resources should be treated as obstacles until they are exhausted (ie. when the bot collects it twice). After that the resource won’t be removed from the arena but it can be treated as a free path.

**Map specifics:**

* Yellow colour with square shape represents gold

* Green colour with triangle shape represents food

* Green colour with square represents wood

* Yellow colour with triangle represents stone

* Blue colour square represents rivers

* Brown colour with triangle represents mountains

* Violet Square represents Town Centre

#### Arena

**Top View**

![](/img/event/conquest/image_1.png){:.img-responsive}

**Isometric View**

![](/img/event/conquest/image_2.png){:.img-responsive}

* The dimensions of the arena will be 3m x 3m.

* The dimension of the squares will be 10cm x 10cm.

* The triangles will be right angled isosceles triangle of the isosceles side 10cm.

* The dimension of the town square will be 25cm x 25cm.

* Standard tracker provided will have two squares of colours orange and pink. However participants are free to use a marker of their own choice.

#### Scoring

* +100 for food

* +120 for gold

* +110 for stone

* +105 for wood

* -50 if the bot goes over the obstacle

* -75 if the bot taps on anything other on the map except for the resource

* Time bonus: + [ 360 - (time taken in sec) ] x 2 points if all the resources are successfully collected.

#### Round 2

The task is the same as Round 1 but now the bot has to also build military buildings and prepare an army. The military buildings would be barracks, archery range, stable and castle. There will be one bot and will get 6 minutes.

The bot will have to first collect the resources, then after it gets a "good enough" number of resources, it can start building the army buildings. The army buildings have a cost associated to it and it would be deducted from the resource collection of the player. The army building will have points which will add to the total score. If the player fails to build any army building till the end of the game, then the score will directly be 0. There is no maximum limit on the number of army buildings that the bot wants to build.

When the bot wants to build a army building (for eg. Barracks) at the cell (3, 4), it can to output it on the laptop screen that "I want to build Barracks at cell no (3, 4)" and this needs to be shown to the judge.

The placeholders for army buildings will be placed after the judge gets the instruction from the laptop. The army buildings are to be treated as obstacles and it has to be placed in such a position that it does not block the path of the bot to the Town Centre. If that happens then the game gets over instantly and the overall points (not including the points of the army building) are calculated. The father the building from the town centre, more the points.

Note: There are no points for the resources left after the game. The points are there only for collection of the resource.

Costs of Army Buildings:

Barracks: 300 food, 200 wood, 50 stone, 50 gold

Archery Range: 350 food, 250 wood, 50 stone

Stable: 300 food, 100 wood, 150 gold

Castle: 500 food, 100 wood, 500 stone, 100 gold

**Map specifics:**

* Yellow colour with square shape represents gold

* Green colour with circle shape represents food

* Green colour with square represents wood

* Brown colour with circle represents stone

* Blue colour square represents rivers

* Brown colour with triangle represents mountains

* Yellow colour with triangle represents Town Centre

* Red colour with square shape represents Barracks

* Red colour with circle represents Archery Range

* Red colour with triangle represents Castle

* Yellow colour with circle represents Stable

#### Scoring

* +100 for food

* +120 for gold

* +110 for stone

* +105 for wood

* +700 for Barracks

* +750 for Archery Range

* +650 for Stable

* +1400 for Castle

* +20 x [ abs(x coordinate of building - x coordinate of town centre) + abs(y coordinate of building - y coordinate of town centre) ]

* -300 if the bot goes over the obstacle

* -100 if the bot taps on anything other on the map except for the resource

* Time bonus: + [ 360 - (time taken in sec) ] x 2 points if all the resources are successfully collected.

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
