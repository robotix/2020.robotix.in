---
layout: post
title: 'Conquest'
subTitle: 'Computer Vision Event'
logo: /img/event/conquest/logo.png
image: img/event/conquest/banner.png
actions:
  -
    icon: 'facebook'
    caption: 'Discussion Forum'
    url: 'https://www.facebook.com/groups/conquestevent/'
    target: '_blank'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/conquest'
    target: '_blank'
  -
    icon: 'youtube'
    caption: 'Tutorial Video'
    url: https://www.youtube.com/watch?v=qiApqerVYcE
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
    url: /event/conquest/faq
    target: _blank
---


#### Introduction

The robots are trying to take over the world. Hence, they need to build
an empire. For achieving this, they have to first collect all possible
resources in a given time.

#### USP

* Path Planning

* Autonomous Traversal

* Colour Detection

* Shape Detection

#### Problem Statement

Build an image processing robot that can collect resources like food and
wood from the arena while avoiding different obstacles. The video feed
of the arena will be given by an overhead camera.

#### Rules

**General Rules:**

* The maximum number of participants allowed per team: 4 people

* The participants will be provided with 220 Volts, 50 Hz standard AC supply.

* Participants will have to arrange for themselves if they require any
other power supply for their robot.

* On board processing units, if any, should fit within the dimensional
constraints specified. Processing outside the arena is recommended,
either wired or wireless.

* Teams qualifying the first round will go into the second round.

* Teams cannot tinker with their bots inside the arena.

* USB extenders (5m long) will be provided.

* There will be maximum of 2 restarts and 3 timeouts. The timeout can be
of a maximum duration of 2 minutes and the bot can be restarted after a
maximum of 5 minutes.

* The decision of Team Robotix will be final and binding.

* If we suspect hard coding, we reserve the full right to check the
participant’s robot by testing on random arenas and code submission.

* Any team displaying aggressive behaviour or refusing to comply with
Team Robotix judgement will be immediately disqualified.

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

* The robot must fit in a box of **25cm x 25cm x 25cm** with a tolerance of
10% in the dimensions of robot. No part/mechanism of/on the bot should
exceed the given dimensions before the commencement of the event. However
the dimensions can change during the course of the run.

* Dimensions of the arena are to be considered with a maximum tolerance
of 10%.

* A marker of dimension **20cm x 10cm** having two colour scheme will be
provided. However, the participants are free to use their own markers.

#### Task

##### Round 1

The arena is plain black with some colourful shapes in it. There would be
an overhead camera which would provide a video feed to the bot. The
civilization has a town center in one cell which is the hub of all the
activities going on in the map.

The bot has to recognize the various resources present (ie. food and wood)
on the map. The town center and all the resources are not obstacles. The
bot has to then go on the resource, then blink an LED once to "collect"
that resource and then return to town center to deliver the resource
collected and finally blink an LED there too. One particular resource is
exhausted after the resource has been collected twice. This round will
last for 6 minutes.

**Note**: Resources and Town Center are not obstacles.

**Map specifics**:

- Yellow with square shapes represents food.
- Yellow with triangle represents wood.
- Brown colour represents town center.

###### Arena:

**Top View**:
![](/img/event/conquest/4.jpg){:.img-responsive}

**Isometric View**:
![](/img/event/conquest/3.jpg){:.img-responsive}

* The dimensions of the arena will be 3m x 3m.
* The dimensions of the squares will be 10cm x 10cm.
* The triangles will be an equilateral triangle of side length 10cm.
* The dimension of the town square will be 25cm x 25cm.
* Standard marker provided will have two squares of colours orange and
pink. However participants are free to use a marker of their own choice.

###### Scoring:
* +100 for food
* +200 for wood
* -75 if the bot blinks on anything other on the map except for the
resource or Town Center
* -50 for timeout
* -100 for restart
* Time bonus: + [360 - (time taken in sec)] x 10 points if all the
resources are successfully collected at least once.

**Note:** If the bot blinks the LED at the resource but is unable to return
to the town center, then 30% of the alloted points will be given. But
then the bot will not be able to directly go to any other resource without
first returning to town center. If the bot goes to other resource, then
the previous 30% of alloted points will not be awarded.

##### Round 2

The arena is plain black with some colourful shapes in it. There would be
an overhead camera which would provide a video feed to the bot. The
civilization has a town center in one cell which is the hub of all the
activities going on in the map.

The bot has to recognize the various resources present (ie. food and wood)
on the map. The arena also contains rivers which are to be treated as
obstacles. The bot has to then go to a resource and blink an
LED once to collect that resource and then return to town center to
deliver the resource collected and blink an LED there too.

One particular resource is exhausted after the resource is collected
twice. The bot will get 6 minutes and it would have to collect the
maximum number of resources. Each resource will have some points. At the end
of the time, the bot should at least have 2 units of food and wood
otherwise the final point tally will directly be 0.

**Note**: Resources aren't obstacles only rivers are.

**Map specifics**:

* Yellow colour with square shape represents food
* Yellow colour with triangle represents wood
* Blue colour square represents rivers
* Brown colour represents Town Center

###### Arena:

**Top View**:
![](/img/event/conquest/1.jpg){:.img-responsive}

**Isometric View**:
![](/img/event/conquest/2.jpg){:.img-responsive}

* The dimensions of the arena will be 3m x 3m.
* The dimension of the squares will be 10cm x 10cm.
* The triangles will be equilateral triangle of side length 10cm.
* The dimension of the town square will be 25cm x 25cm.
* Standard tracker provided will have two squares of colours orange and
pink. However participants are free to use a marker of their own choice.

###### Scoring:

* +100 for food
* +200 for wood
* -150 if the bot goes over the obstacle
* -75 if the bot taps on anything other on the map except for the resource
* -50 for timeout
* -100 for restart
* Time bonus: + [360 - (time taken in sec)] x 10 points if all the resources
are successfully collected at least once.

**Note:** If the bot blinks the LED at the resource but is unable to return
to the town center, then 30% of the alloted points will be given. But
then the bot will not be able to directly go to any other resource without
first returning to town center. If the bot goes to other resource, then
the previous 30% of alloted points will not be awarded.

###### Example Scoring

Let's say there are 5 food and 5 wood resources.

**Case 1: Bot manages to cover each 5 food and 5 wood once within 6 minutes**

Let's say there is still a minute left after covering 5 food and 5 wood
resource. Then scoring will be done as:

 * +500 points for food
 * +1000 points for wood
 * +(360-300) x 10 = 600 points as time bonus

Now since there is still a minute left, the bot can now go for a "second
round" of collecting resources in which the bot can collect the previously
collected resources at max once more. Now let's say the bot manages to
collect further 2 wood resources in that minute, then it will get

 * +400 points for wood

Now the final score tally will be: `500 + 1000 + 600 + 400 = 2500`

**Case 2: Bot manages to cover 2 food and 3 wood and 6 minutes is over**

In this case, the scoring will be done as:

 * +200 points for food
 * +600 points for wood
 + (360-360) x 10 = 0 points as time bonus

Now the final score tally will be: `200 + 600 + 0 = 800`

**Case 3: Bot covers 3 wood resources once and 2 wood resources twice and
6 minutes is over**

In this case, the scoring will be done as:

 * + 0 points for food
 * + 1400 points for wood
 * + 0 points as time bonus because the bot didn't cover each resource at
 least once.


The final score tally for **Round 1** will be: `0 + 1400 + 0 = 1400`
The final score tally for **Round 2** will be: `0` (because the bot didn't
manage to cover at least 1 unit of each resource)

##### Contact:

###### Sourish Ghosh

Email: **[sourish@robotix.in](mailto:sourish@robotix.in)**

Ph. no: **+91 7980623482** / **+91 8902234618**

###### Aaditya Sanjay Boob

Email: **[adityasanjay@robotix.in](mailto:adityasanjay@robotix.in)**

Ph. no: **+91 770911333**
