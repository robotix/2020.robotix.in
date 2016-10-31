---
layout: post
title: 'Bomb Disposal'
subTitle: 'Manual Robotics Event'
logo: /img/event/bombdisposal/logo.png
actions:
  -
    text: 'T'
    caption: 'Tutorials'
    url: 'http://www.robotix.in/tutorial'
    target: '_blank'
---


### Introduction

The Bomb Squad is to try out their new robot which can disarm bombs and thus reduce the loss of lives of the fearless men who try to diffuse it.

### USP

* **Maneuverable land traversal**

* **Cutting wires**

* **Lifting objects**

### Problem statement

To build a manually controlled robot which is capable of cutting the required wires and lifting objects.

### Rounds

#### Round 1

1. Traverse through an obstacle path and search for bombs (wooden blocks)

2. Have to save the city by taking the bombs out of the city limit to the safe zone (green zone)

3. Each bomb will have a time denoted on it specifying the time the bomb will explode after the event starts

4. Each bomb will have 3 wires on them of different colours. Dispose the bombs by cutting the correct wire.

5. Cutting of wrong wire will set off the bomb immediately

6. Dropping any bomb will lead to its explosion

7. There will a sound to indicate the bomb blast

8. Each participant will be given 3 lives in this round after which the round is over

9. A life is deducted whenever a bomb the robot was last directly engaged with, explodes

10. The bot can defuse the bomb in the city limits itself instead of taking it to safe zone but it will cost him 5 times more negative points if it explodes in city limits.

#### Round 2

1. Traverse through an obstacle path and search for bombs (wooden blocks)

2. Have to save the city by taking the bombs out of the city limit to the safe zone

3. Each bomb will have a time denoted on it specifying the time the bomb will explode after the event starts

4. Each bomb will have 3 wires on them of different colours. Dispose the bombs by cutting the correct wire.

5. To diffuse few bombs more than 1 wire needs to be cut in the order specified on the bomb

6. Bombs will have different points for getting diffused depending on the complexity of diffusing

7. Cutting of wrong wire will set off the bomb immediately

8. There will be tanks of fossil fuel around the city. These need to be taken to another area outside the city which will be marked red. Positive points will be awarded for each tank that is moved, however, if dropped negative points will be given.

9. Dropping any bomb will lead to negative points.

10. There will a sound to indicate the bomb blast ( Dropping case excluded, only when timer goes off )

11. Each participant will be given 2 lives in this round after which the round is over

12. The bot can defuse the bomb in the city limits itself instead of taking it to safe zone but it will cost him 5 times more negative points if it explodes in city limits.

### Arena

**Isometric View**

![](/img/event/bombdisposal/image_1.jpg){:.img-responsive}

**Top View**

![](/img/event/bombdisposal/image_2.jpg){:.img-responsive}

**Front View**

![](/img/event/bombdisposal/image_3.jpg){:.img-responsive}

**Side View**

![](/img/event/bombdisposal/image_4.jpg){:.img-responsive}

#### Arena Components

**Boundary Wall Specification:**

* Height and width of the boundary wall is **20 cm and 1.2cm** respectively.
* The height of the wall may vary from ± 1 cm.

**Shed Specification:**

* Height of the shed is **12 cm.**

![](/img/event/bombdisposal/image_5.jpg){:.img-responsive}

**Hidden Bombs (Shed)**

**Hanging Pole Specification:**

* The bomb will be hung from a height of **15 cm**.

**Barriers (Rubber Bands):**

Along its path, the robot will have to get past through few barriers (in the form of stretched rubber bands) by cutting through it with its mechanism.

**Hanging Bombs**

![](/img/event/bombdisposal/image_6.jpg){:.img-responsive}

**Bomb Specification:**

* These will be wooden cubes of dimension 5 cm * 5 cm * 5 cm (l*b*h).

* Wires will be attached to the upper surface (lower surface for the hanging bomb) of the bomb.

* The wires will be made up of cable ties

* The hanging bomb will have a hook on top surface for the corresponding lifting mechanism.

* The weight of the object will be less than **90 g**.

**Bombs**

![](/img/event/bombdisposal/image_8.jpg){:.img-responsive}

**Petrol Tank Specification:**

* These will be wooden cylinders of height and diameter of 6 cm and 4 cm respectively.

* The tank will have a hook on top surface for the corresponding lifting mechanism.

* The weight of the object will be less than **90 g**.

**Petrol Tank**

![](/img/event/bombdisposal/image_9.jpg){:.img-responsive}

### Rules And Specifications

#### General Rules

1. All arena dimensions may have a tolerance (error) of up to 10%.

2. Each team can consist of a maximum of 4 members.

3. Only **2** members per team will be allowed to control the robot.

4. The participants will be provided with 220 volts, 50 Hz standard AC supply.

5. Each team should have unique participants i.e. no two teams can have even a single participant common.

6. The team members can be from different institutes or colleges.

7. Teams qualifying the first round will go into the second round and the second round performance will determine the winner.

8. The teams cannot touch their bots during the course of the run, unless timeout is taken.

9. The right spirit of participation is expected from the participants.

10. **The decision of Team ROBOTIX will be final and binding.**

#### Event Rules

##### Bomb

1. The Bombs will be made of Hollow wood.

2. The tolerances in all dimensions are 10%.

3. The weight of the bomb will not exceed 90 gms.

4. The position of all the bomb will be decided by Team ROBOTIX.

##### Picking and placing up the Bomb

1. The bombs have to be picked up as **neatly** as possible and dragging must be avoided if possible.

2. If the bomb falls down, there will be **penalties**.

##### Arena and Locomotion

1. The robot has to start from the **Safe Zone,** which will be marked in green in the arena.

2. The bot has to go and complete the tasks as specified above. Any discrepancies will be handled by Team ROBOTIX and their decision will be final and binding.

3. The Bomb must be placed in the safe zone. If it falls out of the safe zone while placing, it will lead to an explosion. Sliding the bomb on the platform is allowed but if the bomb falls while picking or placing, it will incur negative points.

4. Time will be kept by Team ROBOTIX and their decision will be final and binding.

5. There will be a **Wall** surrounding the arena from three sides

##### Initial Orientation of Robot

1. The participant is allowed to decide the initial orientation of his robot on the start zone.

2. Team ROBOTIX reserves the right to disallow any initial orientation of the robot inside the starting zone if it gives the participant an undue advantage, solely based on the judge’s discretion.

##### Restarts and Timeouts

1. A maximum of 2 Timeouts of **1 minute** each may be taken. Penalty will be awarded for each timeout and robot will start from its last position on the arena.

2. The participant’s robots can have a maximum of 2 restarts. A penalty will be imposed on the team for every restart that they take.

3. After the restart, the participant’s robot will be set to its initial position. Timer will be set to zero and the run will start afresh with the addition of the penalty for restart.

4. A timeout can be taken anytime at the user's discretion.

5. A restart can only be taken if there is a genuine technical fault in the bot. Team ROBOTIX may refuse a restart if the reason is not genuine, and their decision will be binding and final.

#### Robot Specifications

1. Each robot can have maximum dimension of 30 x 30 x 30 cubic cm (L x B x H) respectively.

2. No part/mechanism of/on the robot should exceed the given dimensions before the commencement of the event run. The robots can exceed their respective dimensions once the event commences, due to elongation of arms/gripper/forklift.

3. There is no weight restriction on the robot.

4. LEGO kits or its spare parts or pre-made mechanical parts are not allowed.[ (http://en.wikipedia.org/wiki/Lego_Mindstorms)](http://en.wikipedia.org/wiki/Lego_Mindstorms)

5. Ready-made gearboxes, sensors, development boards can be used but no other part of the robot should contain any ready-made components. Simple car bases with no extra features may be used.

6. The bots should not damage the event arena in any way. If it does so, a penalty will be imposed on the team. The magnitude of the penalty will be decided by Team ROBOTIX.

7. Ready-made gripper is also allowed .

### Scoring

#### Round 1

**Positives**

1. Base score: 1000

2. For each bomb placed in safe zone (given only once for each bomb): 150 (**L**)

3. For successful cut of coloured wire: 150 (**S**)

4. Time bonus: time left in seconds (provided the task is complete)(**B**)

**Negatives**

1. Explosion of bomb anywhere in the city : -250 (**NS**)

2. Bomb explosion in the safe zone : -50 (**NP**)

3. Negative marks for each timeout: -100 (**T**)

4. Negative marks for restart: -150 (**R**)

#### Scoring Formula

**`1000 + 150*(S + L) + t’*B - 50*(NP) - 100*T - 150*R - 250*NS`**

#### Round 2

**Positives**

1. Base score: 1000

2. For each bomb placed in safe zone (given only once for each bomb): 150 (**L**)

3. For successful cut of each coloured wire : 150 (**S**)

4. For placing the Tanks in the Red Zone : 100 (**P**)

5. Time bonus: time left in seconds (provided the task is complete)(**B**)

**Negatives**

1. Explosion of bomb anywhere in city : -250 (**NS**)

2. Bomb explosion in the safe zone : -50 (**NP)**

3. Dropping the tank of fossil fuel :- 50 (**F**)

4. Negative marks for each timeout: -100 (**T**)

5. Negative marks for restart: -150 (**R**)

#### Scoring Formula

**`1000 + 100*P + 150*(S + L) + t’*B - 50*(NP + F) - 100*T - 150*R - 250*NS`**
<br>

#### Contact

##### Shubhangi Bhushan

Email: **[shubhangi@robotix.in](mailto:shubhangi@robotix.in)**

Ph. no: **+91 9933909355**

##### Rajat Chaurasia

Email: **[rajat@robotix.in](mailto:rajat@robotix.in)**

Ph. no: **+91 7872703173**

##### Shweta Gupta

Email: **[shweta@robotix.in](mailto:shweta@robotix.in)**

Ph. no: **+91 7872814560**
