---
layout: post
title: 'Zenith'
subTitle: 'Manual Robotics Event'
logo: /img/event/zenith/logo.png
actions:
  -
    text: 'D'
    caption: 'Do-It-Yourself'
    link: '/img/event/zenith/DIY_zenith.png'
---
#### Introduction

It is post-war time and the place is all in shambles, with rubble and trenches all over the place. You are asked to design the prototype of a bot that is capable of clearing all these hurdles and reaching the zenith.

#### Problem Statement

To build a manually controlled robot which is capable of crossing the gaps in the arena, while avoiding obstacles by increasing or decreasing its ground clearance.

#### USP

* Crossing gaps

* Changing ground clearance.

#### Task

##### Round 1

* The time for this round is 5 minutes.

* The bot has to start from the starting area which will be marked on the left side of the arena.

* It then has to traverse along the path, with various gaps and obstacles coming along its way. 

* The bot will first pass through a scaffolding followed by a gap. The bot is supposed to cross the gap using a suitable mechanism.

* Next, the bot has to go over the obstacle by increasing its height by a suitable mechanism.

* The bot will face a scaffolding next along a curved turn.

* It will then come across a gap, followed by an obstacle and another gap successively.

* The last scaffolding is a perpendicular shaped structure. 

* After crossing this, the bot reaches its end zone.


##### Round 2

* The time limit for this round is 7 minutes.

* The arena is now harder to complete.

* The bot will pass through the usual scaffolding and gap, but the next part of the arena will be challenging.

* Beyond the curved scaffolding, the bot encounters a gap.

* It then faces a curved obstacle, over which the bot has to pass.

* Next, the bot comes across a combination of gaps, obstacle and scaffolding.

* After crossing the last scaffolding, the bot will encounter a gate. 

* The bot has to strike at a certain point of the gate. For this, it will have to change its ground clearance.

* Once it strikes that point on the gate, it then has to lower its body and pass through the gate to finally reach the end zone.


#### Arenas

##### Round 1

![](/img/event/zenith/manual1_round1.png){:.img-responsive}

![](/img/event/zenith/manual2_round1.png){:.img-responsive}

![](/img/event/zenith/manual3_round1.png){:.img-responsive}

![](/img/event/zenith/manual4_round1.png){:.img-responsive}

##### Round 2

![](/img/event/zenith/manual1_round2.png){:.img-responsive}

![](/img/event/zenith/manual2_round2.png){:.img-responsive}

![](/img/event/zenith/manual3_round2.png){:.img-responsive}

![](/img/event/zenith/manual4_round2.png){:.img-responsive}

#### Rules and Specifications

##### General Rules

1. All arena dimensions may have a tolerance (error) of up to 10%.

2. Each team can consist of a maximum of 4 members.

3. Only **2** members per team will be allowed to control the robot.

4. The participants will be provided with 220 volts, 50 Hz standard AC supply. However, the participants cannot use this voltage apart from getting a 24V DC output through an adapter. This goes to say that no component on the robot may use a power supply higher than 24V DC. In case of any discrepancy, Team ROBOTIX will have the final say.

5. Two teams can have one or more members in common.

6. The team members can be from different institutes or colleges.

7. Teams qualifying the first round will go into the second round.

8. The teams cannot touch their robot during the course of the run, unless timeout is taken.

9. The best spirit of sportmanship is expected from the participants.

10. **The decision of Team ROBOTIX will be final and binding.**

##### Arena and Locomotion

* The robot has to start from the **start point**, which will be marked in the arena.

* Penalty will be awarded every time the robot falls off the arena.

* The robot has to go and complete the tasks as specified above. Any discrepancies will be handled by Team ROBOTIX and their decision will be final and binding.

* Time will be kept by Team ROBOTIX and their decision will be final and binding.

##### Initial Orientation of Robot

* The participant is allowed to decide the initial orientation of his robot in the start zone.

* Team ROBOTIX reserves the right to disallow any initial orientation of the robot inside the starting zone if it gives the participant an undue advantage, solely based on the judge’s discretion.

##### Restarts and Timeouts

* A maximum of **2 Timeouts** of **1 minute** each may be taken in **each round**. Penalty will be awarded for each timeout and robot will start from its **last position** on the arena.

* The participant's robots can have a **maximum of 1 restart per round**. A penalty will be imposed on the team for every restart that they take.

* After the restart, the participant's robot will be set to its initial position. Timer will be set to zero and the run will start afresh with the addition of the penalty for restart.

* A timeout can be taken anytime at the participant's discretion.

* A **restart can only be taken if there is a genuine technical fault** in the robot. Team ROBOTIX may refuse a restart if the reason is not genuine enough, and their decision will be binding and final.

##### Robot Specifications

* Each robot can have a maximum dimension of 30 x 30 x 30 cubic cm (L x B x H) respectively in its most concise form, with an allowance of an extra 5%..

* No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event run. The robots can exceed their respective dimensions once the event commences, due to elongation of ground clearance/gap crossing mechanisms. However, Team ROBOTIX gets the final say in deciding whether the advantage is fair or not.

* There is no weight restriction on the robot.

* [LEGO kits](http://en.wikipedia.org/wiki/Lego_Mindstorms) or its spare parts or pre-made mechanical parts are **not** allowed.

* Ready-made gearboxes, sensors, development boards can be used but no other part of the robot should contain any ready-made components. Simple car bases with no extra features may be used.

* The bots should not damage the event arena in any way. If it does so, a penalty will be imposed on the team. The magnitude of the penalty will be decided by Team ROBOTIX.

#### Scoring

##### Round 1

**Positives**

* Base score: **500**

* Successfully going under the scaffoldings

    * Scaffolding 1: **50** (S1)

    * Scaffolding 2: **100** (S2)

    * Scaffolding 3: **100** (S3)

* Successfully going over the obstacles

    * Triangular Obstacle 1: **100** (TO1)

    * Triangular Obstacle 2: **100** (TO2)

    * Cuboidal Obstacle: **100** (CO)

* Crossing the first gap: **200** (G1)

* Crossing the second gap: **200** (G2)

* Time bonus: **number of seconds left(t')*2**

**Negatives**

* Hitting any scaffolding: **-100** (E1)

* Hitting any obstacle: **-100** (E2)

* Disbalance or slipping of the robot: **-50** (E3)

* Falling of the arena or in any of the gaps: **-200** (E4)

* Negative marks for each timeout: **-100** (T)

* Negative marks for restart: **-200** (R)

**Scoring formula:**

{% highlight ruby %}
500 + (50 * S1 + 100 * S2 + 100 * S3) + (100 * TO1 + 100 * TO2 + 100 * CO) - (100 * E1 + 100 * E2 + 50 * E3 + 200 * E4 + 100 * T + 200 * R) + t' * 2
{% endhighlight %}

##### Round 2

**Positives**

* Base score: **500**

* Successfully going under the scaffoldings

    * Scaffolding 1: **50** (S1)

    * Scaffolding 2: **100** (S2)

    * Scaffolding 3: **200** (S3)

* Successfully going over the obstacles

    * Triangular Obstacle 1: **100** (TO1)

    * Triangular Obstacle 2: **100** (TO2)

    * Cuboidal Obstacle: **150** (CO)

* Crossing the first gap: **200** (G1)

* Crossing the second gap: **200** (G2)

* Successfully passing through the gate **200** (G)

* Time bonus: **number of seconds left(t') * 3**

**Negatives**

* Hitting any scaffolding: **-100** (E1)

* Hitting any obstacle: **-100** (E2)

* Disbalance or slipping of the robot: **-50** (E3)

* Falling of the arena or in any of the gaps: **-200** (E4)

* Hitting or damaging the gate: **-150** (E5)

* Negative marks for each timeout: **-100** (T)

* Negative marks for restart: **-200** ( R )

**Scoring formula:**

{% highlight ruby %}
500 + (50 * S1 + 100 * S2 + 200 * S3) + (100 * TO1 + 100 * TO2 + 150 * CO) + 100 * (P1 + P2) + 200 * (G1 + G2 + G) - (100 * E1 + 100 * E2 + 50 * E3 + 200 * E4 + 150 * E5 + 100 * T + 200 * R) + t' * 3
{% endhighlight %}

##### Contacts

###### Shivansh Mundra

Email: **[shivansh.mundra@robotix.in](mailto:shivansh.mundra@robotix.in)**

Ph. no: **+91 7877399396**

###### Siddhartha Kapuria

Email: **[siddhartha.kapuria@robotix.in](mailto:siddhartha.kapuria@robotix.in)**

Ph. no: **+91 7479322111**

###### Anvee Naik

Email: **[anvee.naik@robotix.in](mailto:anvee.naik@robotix.in)**

Ph. no: **+91 7430944999**