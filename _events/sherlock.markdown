---
layout: post
title: 'Sherlock'
subTitle: 'Autonomous Event'
logo: /img/event/sherlock/logo.jpg
social:
  - {name: "facebook", link: ""}
excerpt_separator: <!--more-->
---

###Introduction

A test of wits between nemeses is an age-old story, and as the story goes the two rivals never actually defeat one another, they just make it harder and harder for the other one to survive. In one such turn of events, Moriarty has captured Sherlock and left him stranded in a desert wasteland with nothing but a compass in his pocket. Sherlock has to make his way out of the desert in the shortest path given that he has no supplies at hand. The problem is simple, but the solution is complex, those who like a good challenge have a chance to prove their mettle.

###USP

- IR signal receive and decode
- Path planning
- Magnetic heading following

###Problem Statement

Build an autonomous robot that can follow compass headings to go from start to finish via minimum waypoints using IR receiver to receive arena and waypoint information.

<!--more-->

###USP

- HEX decoding
- Unlocalizable Environment
- Path optimization

###Description
- The arena consists of multiple start and finish points. Other points are termed as waypoints. Start, finish and waypoints are collectively referred here as (points of interest: POI).
- These POIs have a circular area of 5 cm radius with IR transmitters on the center. The IR transmitter transmits ID of the respective POI and other information as stated below.
- The information is transmitted through messages using NEC IR protocol. 
- A message starts with “400” as start code ends with “500” as end code. “450” is the code used as separator in between the messages.
- A POI may transmit multiple such messages (max 9). Then each message will be tagged with a two digit “message_tag”. 1st digit = present message id. 2nd digit = total messages to be transmitted from that POI.
- The POIs will have ids. Each POI will provide heading to single or multiple different other POIs, for eg. waypoint 1 transmits the info for waypoint 2,6,5 in                                         (start message_tag own_id [id heading]s stop) format as follows. 400 11 1 2 260 6 180 5 300 500
- When the participant’s run starts, the bot is placed on start point. The start point will provide the following information:
  - A1:                                                                            
POIs each waypoint directs to. Eg                                                                                     (start msg_tag own_id [waypoint [waypoint_it_directs to]s separator]s stop)  (400 13 51 1 2 6 5 450 2 5 3 7 450 500)
  - A2: 
Finish point for that particular run. Eg. 
(start msg_tag own_id finish_id stop)     
(400 23 51 72 500)
  - A3:
Heading for only the first possible waypoints after itself. Eg.                                  (start msg_tag own_id [id heading]s stop)                                                                      (400 33 51 2 260 6 180 5 300 500)
- The bot has to plan its route passing through the minimum number of POIs from its start to a predefined finish point traversing through only the allowed paths. Consider the above eg. data: the bot can only go to 2,6,5 from 1 and to only 5,3,7 from 2. If it violates this then there will be negative scoring.
- As organisers we will have the allowed paths printed on a sheet and will show it to the participants, if they want, after their run. There will be no explicit markings on the arena to indicate allowed paths.
- Once the bot plans the route (52,2,5,10,15,18,20,21,19,22,73) it then takes the heading of 2 from the start point(52) and goes there. It will get heading info for other waypoints only from previous waypoints on the path. So when it has to go to 20 from 18, it will know the heading of 20 from 18 only when it is on 18.
- In case the bot goes on wrong path then there will be fail safe black lines to guide it to nearest waypoint so that it can plan its path from that waypoint and travel forward again.

###Arena

####Depictive Arena

Legend:
Red POI: Start points
Blue POI: waypoints
Green POI: Finish points
Black Lines: Fail safe lines
Green Lines: Allowed paths

![]({{ site.baseurl }}/img/event/sherlock/image00.jpg){:class="img-responsive"}

####Sample Arena

#####Round 1

![]({{ site.baseurl }}/img/event/sherlock/image01.jpg){:class="img-responsive"}

#####Round 2

![]({{ site.baseurl }}/img/event/sherlock/image02.jpg){:class="img-responsive"}

One of the most optimized path (Yellow)

![]({{ site.baseurl }}/img/event/sherlock/image03.jpg){:class="img-responsive"}


###Rounds

####Round 1

- Each waypoint will send the bot to only one other waypoint
- The bot must simply follow the directions to the end point
- Round will be 3 minutes.
- If finish point is reached then flash an LED
- There is 1 timeout and 1 restart allowed.

####Round 2

- Waypoints will be transmitting heading information for single or multiple other waypoints.
- Start points will transmit the bearing for ‘A1’ , ‘A2’ and ‘A3’ and providing referencing information for the entire arena, i.e. which waypoints each waypoint on the arena provides the bearings for.
- Robot has to plan its best optimized path with the information being given from the start point as mentioned above.
- Once the bot reaches the finish point it must flash an LED.
- Round will be 5 minutes.
- There are 2 timeouts and 1 restart allowed.

###Scoring

####Positives
- Base score: 1000
- Reach correct Finish Point: 100 (F)
- Time bonus: time left in seconds (S)

####Negatives
- For each legal traversal between POIs: -5 (LT)
- For each illegal traversal between POIs: -30 (IT)
- Each time the bot misses and encounter a black line: -10 (L)
- Reach incorrect Finish Point: -50 (NF)
- Extra time taken in seconds (NS)
- Negative marks for each timeout: -150 (T)
- Negative marks for restart: -250 (R)

####Scoring Formula:
1000 + 100*F + S - 5*LT - 30*IT - 10*L - 50*NF - NS - 150*T - 250*R

####Tutorial
Find the detailed tutorial [here]({{ site.baseurl }}/tutorial/event/sherlock).

###Contact

####Aditya Narayan
**(91) 9471463832**  
**aditya.narayan@robotix.in**