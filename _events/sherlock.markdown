---
layout: post
title: 'Sherlock'
subTitle: 'Autonomous Event'
logo: /img/event/sherlock/logo.jpg
actions:
  -
    text: 'P'
    caption: 'Total prize money worth Rs 44,000'
  -
    text: 'T'
    caption: 'Tutorial'
    url: '/tutorial/event/sherlock'
    target: '_blank'
  -
    text: 'F'
    caption: 'Discussion Forum'
    url: 'http://bit.do/sherlock-event'
    target: '_blank'
---

###Introduction

Sherlock is stuck in a featureless desert wasteland with nothing but a compass in his pocket. He must find his way out using the clues scattered in the desert.

###USP

- IR signal reception and decoding 
- Path optimisation
- Magnetic heading following

###Problem Statement

Build an autonomous robot that can follow compass headings to go from start to finish via minimum waypoints using IR receiver to receive arena and waypoint information.

###Description
- The arena consists of multiple start and finish points. Other points are termed as waypoints. Start, finish and waypoints are collectively referred here as (points of interest: POI).
- These POIs have a circular area of 5 cm radius with IR transmitters on the center. The IR transmitter transmits ID of the respective POI and other information as stated below.
- The information is transmitted through messages using NEC IR protocol. 
- A message starts with “400” as start code ends with “500” as end code. “450” is the code used as separator in between the messages.
- A POI may transmit multiple such messages (max 9). Then each message will be tagged with a two digit “message_tag”. 1st digit = present message id. 2nd digit = total messages to be transmitted from that POI.
- The POIs will have ids. Each POI will provide heading to single or multiple different other POIs. Waypoint 3 transmits the info for waypoint 2,6,5 in  format as follows:
(start message_tag own_id [id heading costs] stop) (400 11 3 2 260 10 6 180 90 5 300 40 500). Here 400 is the start code, 11 is message_tag (1st of the 1 total messages), 3 is the own_id of POI, and it is connected to 2,6 and 5 at headings of 260, 180 and 300 via paths of costs 10,5 and 40 respectively.
- When the participant’s run starts, the bot is placed on start point. The start point will provide the following information:
  - A1:                                                                            
POIs each waypoint directs to. Eg (start msg_tag own_id [waypoint [waypoint_it_directs to]s separator]s stop) (400 13 51 2 3 6 5 450 3 5 2 7 450 500). Here 400 is the start bit, 13 is the message_id (1st of the 3 total messages), 51 is the own_id of POI and the information is that 2 is connected to 3,6 and 5, 3 is connected to 5,2 and 7, and finally 500 is the stop code. The 450s as mentioned are separators.
  - A2: 
Finish point for that particular run. Eg. (start msg_tag own_id finish_id stop) (400 23 51 72 500) where 51 is start ID and 72 is finish ID. Here 400 is the start code, 23 is the message_id(2nd of the 3 total messages),51 is own_id and 72 is the id of the finish point, 500 at the end being the stop code.
  - A3:
Heading for only the first possible waypoint after itself. Eg.  (start msg_tag own_id [id heading cost] stop) (400 33 51 2 260 20 500). Here 400 is the start bit, 33 is the message_id (3rd of the 3 total messages), 51 is the own_id of POI and the information is that 2 is the next POI at heading of 260 and cost 20, and finally 500 is the stop code.
- So the bot gets to know the entire connected graph on the start POI.
- The bot has to plan its route passing through the minimum number of POIs from its start and minimising the cost of travel along its way to reach a predefined finish point while, traversing through only the valid paths. Valid path means, if POI 1, publishes heading for 2, 3, 6. Then it should go to any of the three only, otherwise there will be a penalty.
- The bot has to minimize the score given by A*(number of POIs traversed) + B*cost. Where A and B will be given during the run.
- There will be no explicit markings on the arena to indicate valid paths.
- If the bot gets lost in the arena and comes back to a POI, then it has to plan a way to continue its pre planned path going through valid paths. It may take help from the walls in the arena to stumble upon a POI if it gets lost.


###Arena

####Depictive Arena

Legend:
Red POI: Start point
Blue POI: Waypoints
Green POI: Finish point
Green Lines: Valid paths

![]({{ site.baseurl }}/img/event/sherlock/image00.png){:class="img-responsive"}

####Sample Arena

#####Round 1

![]({{ site.baseurl }}/img/event/sherlock/image01.png){:class="img-responsive"}

#####Round 2

![]({{ site.baseurl }}/img/event/sherlock/image02.png){:class="img-responsive"}

#####Actual Arena

![]({{ site.baseurl }}/img/event/sherlock/image03.png){:class="img-responsive"}


###Rounds

####Round 1

- Each waypoint will send the bot to only one other waypoint
- The bot must simply follow the directions to the end point
- The round will be of 3 minutes duration.
- If finish point is reached then the bot has to flash a LED
- There is 1 timeout and 1 restart allowed.

####Round 2

- Waypoints will be transmitting heading information for single or multiple other waypoints.
- Start points will transmit the bearing for its immediate neighbour POIs  and providing referencing information for the entire arena, i.e. which waypoints each waypoint on the arena provides the bearings for.
- Robot has to plan its best optimized path with the information being given from the start point as mentioned above.
- Once the bot reaches the finish point it must flash a LED.
- The round will be of 5 minutes duration.
- There are 2 timeouts and 1 restart allowed.


###Scoring

- Base Score: S
- Reach each POI: -A (as mentioned description)
- Traversing an invalid path each time: -100 (X)
- Total Cost incurred in reaching the end point: TC
- For each timeout: -150 (T)
- Restart: -250 (R)

####Scoring Formula:
- Score = S-A*(no of nodes traversed)-B*(TC)-Penalties (X,T,R)
  - So if a participant reaches the end point traversing 9 nodes, with 250 total cost incurred and with 2 invalid path traversals, 1 timeout and 1 restart, his score would be:
  - Score = S-9A-250B-2*100-1*150-1*250
- Target is to maximize the score. If two participants manage to get the same score, then the participant with lowest time taken is declared the winner.

###Contact

####Aditya Narayan
**(91) 9471463832**  
**aditya.narayan@robotix.in**
