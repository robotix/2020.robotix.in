# Tutorials

#### StepUp Tutorial

**Problem Statement:**

  
"Build an autonomous robot which can traverse a grid and arrange blocks of different heights in ascending order such that it optimises its path while completing this task."

So, we have to make an autonomous robot capable of traversing an unknown grid consisting of cubes on some nodes. Then the robot using a suitable gripping mechanism has to place the cubes in the ascending order of their heights on the five center nodes on the middle line. The robot will complete its task in two steps:

* Mapping the unknown arena and finding the positions of various nodes containing cubes and voids.
* Placing the cubes by applying path optimisation.

We have a 7x5 grid in the first round where in 3 blocks will be randomly placed haphazardly. The robot will start from one corner of the grid and have to effectively sort the 3 blocks in increasing order of height on the middle line such that they are placed in the middle 3 nodes.

**Topics of Discussion:**

* Drive Mechanism
* Sensors
* Grid Following
* Measurement of height
* Obstacle Detection
* Gripping Mechanism
* Algorithm

**Drive Mechanism :**  
To traverse the arena, the robot needs a control mechanism for which a differential drive is a simple and efficient method. A differential drive contains two wheels and two separate DC motors driving them. In this event, DC motors of 60/100 rpm should be ideal for completing the task to be done in this event. The different types of motion which can be achieved using a differential drive are:

![][1]

  
**Sensors:**

**LED-LDR Sensor**  
An LED-LDR sensor is generally used to follow a white line on a black surface as needed. These are used to differentiate between surfaces based on the difference in the intensity of the light reflected. The resistance of an LDR decreases with increase in the intensity of light incident on its surface.

For more details, refer to the sensory System section over [here][2].

**IR SENSORS**  
The IR sensors work on the same principle as the LED-LDR. It is a set of a Infrared source and a light detector which detects the intensity of the infrared light incident on it. Its working is same as described above.

**Grid Following :**  
A grid follower is basically a line follower. The only difference comes in when it reaches a node where it has many lines which it can follow. The basic principle used for grid following is detecting the intersection to determine a robot's position on the grid and taking a turn accordingly. To ascertain the position on a grid many ways can be employed. One of the ways is by looking at the grid in a two dimensional system where we will assume the starting node to be the origin and then we will have 2 axis system with every node being represented by a point on the 2-D coordinate system. Also do note that the white lines will be 3 cm wide for grid following.

For a detailed tutorial on line following, [click here][2].  
For a detailed tutorial on grid following, [click here][3].

![][4]

  
**Measurement Of Height :**

We can compare the heights of different blocks using a SONAR. The block with the greatest distance(as measured from the SONAR's readings) will be of the shortest height (as the SONAR is above the heights of all blocks).  The SONAR can be attached to a stick with a linear actuator so that the bot doesn't exceed the dimensions. Another solution is using 7-8 LED-LDRs placed on a vertical rod in front of the robot. The sensors should be placed at some distance from each other such that the readings should differ according to the heights of the blocks.

**Obstacle Detection :**

The robot has to detect blocks on certain nodes. So, it has to do obstacle detection for detecting the blocks.  
Obstacle detection can be achieved by employing any of the above mentioned sensors. The sensor is placed on the front of the robot such that it faces forward. When the sensor is far from the blocks, the amount of reflected light reaching the sensor will be less than when the the robot is close to the block. Using this concept we can configure the sensor to detect how close the block is.

**Gripping Mechanism :**

The grippers can be based on two basic mechanisms: (i) that pushes the blocks to the desired location (ii) that lifts the blocks and keeps them at the final position. Grippers that implement lifting mechanisms are preferred as pushing the blocks may cause problems while traversing the grids. Simple ready-made grippers are also allowed.

**Top View:**

In the diagram below, the cuboids are numbered 1 to 5 in ascending order of their heights which can be calculated using any sorting algorithm, for example, Bubble Sort.  

![][5]

  
**Area mapping Algorithm :**

Firstly, the robot has to travel the entire grid so that it gets to know which nodes are free and which have blocks placed on them.  
For this, we can implement **BFS/DFS**:

It is important to note that using a brute force algorithm like- the robot should always move forward unless it encounters an obstacle or reaches the dead end isn't an appropriate solution as many nodes might be left unvisited and back tracing those node will be very difficult. Hence, using BFS or DFS is preferable.

  
This is how the BFS works.

![][6]

We first start at the first node. All the nodes in the array are marked 'NULL' now which means that the nodes haven't been visited. On recognizing the first node, w mark it as M( shown as gray in the above picture ).  If the node M has no block placed on it, we mark the node as 1, else 0( shown as black in the above picture ). Now, we locate all the nodes which are connected to the first node and mark them M.  And we call the function recursively so that we get to know the location of the blocks placed  in the arena. Here we consider that blocked nodes (0) connect no further nodes. So, when a blocked node arrives no extra node is further marked. Thus, we can traverse even an unknown grid using a variant of BFS.

_**Pseudo code :**_

![][7]

Let us implement BFS on the following graph!

Starting node "A"- Final node "D"  
Q = {};//Initial Null Queue  
//Enqueue Starting Node  
Q = {"A"};  
//Here our loop starts and iterates till the queue is not empty  
//Dequeue the first Element, mark it visited and add the nodes connected to it  
//First Iteration  
Q.poll();//"A" is removed from queue  
"A" = visited;  
Q.add("B");//"B" is the only node connected to "A"  
//Queue is not empty (Q = {"B"})  
//Second Iteration  
Q.poll();//"B" is removed from the queue  
"B" = visited;  
//"C" and "E" are added to the queue as they are directly connected to node "B"  
Q.add("C");  
Q.add("E");  
//Queue is still not empty (Q = {"C","E"})  
//Third Iteration  
Q.poll();//"C" is removed from the queue  
"C" = visited;  
//no nodes are connected to "C", therefore nothing is added to the queue  
//Queue is still not empty (Q = {"E"})  
//Fourth Iteration  
Q.poll();//"E" is removed from the queue  
"E" = visited;  
Q.add("D")//only "D" is connected to "E"  
//Queue is still not empty (Q = {"D"})  
//Fifth Iteration  
Q.poll();//"D" is removed from the queue  
"D" = visited;  
//"B" is directly connected to "D" but it won't be added to the queue as it is already visited  
//Queue is empty and therefore break the loop  
//Check is "D" is visited  
//Yes it is!!!  
//Search successful  
//BFS Complete

On traversing the grid, whenever we come across a node which has a block placed on it, we scan the height of that block using a linear actuator.  
Finally we will have an array which will store the position of each block and its corresponding height.

To return to the starting point, we can use a Recursive Backtrack mechanism or BFS as is explained above.

For sorting the array of heights, we can use any sorting mechanism, for example, Bubble Sort.

**Pseudocode for Bubble Sort:**  
procedure bubbleSort( A : list of sortable items )  
   n = length(A)  
   repeat      
     swapped = false  
     for i = 1 to  n-1 inclusive do  
       /* if this pair is out of order */  
       if A[i-1] > A[i] then  
         /* swap them and remember something changed */  
         swap( A[i-1], A[i] )  
         swapped = true  
       end if  
     end for  
   until not swapped  
end procedure

Now one by one start placing them. But if the cell is already occupied then we will have to move the cube from that node and place it on some other(temporary) node.

for i=1 to 5  
    if(final position of ith block is not free)  
        move the block at the final position of ith block to the node as shown in the diagram below(represented by circles) ;  
    place the ith block to its final position  
end

![][8]

Finally, the blocks should be placed in ascending order of their heights as shown in the picture below.

![][9]

  
This isn't the best algorithm to optimize the number of steps traversed by the robot but this solution will work. To optimize the number of steps, you need to improvise on the algorithm.

In the second round, the blocks can be placed all over the arena. We can use an extension of this algorithm itself, but again, this isn't the best solution to optimize the number of steps traversed by the robot.

**Assembly:**

Now, we integrate the components on the chassis. We have a suitable driving mechanism to be incorporated onto the chassis, namely the differential drive. We also have the sensors required to detect the obstacles ahead, their heights and for the grid traversal.

For the object detection, a horizontal extension is added to the chasis, wherein an IR sensor to the top of that extension, with the IR transmitter and receiver of that sensor facing forward. To add to that we place an LED-LDR array of 5 sensors at the bottom of the robot, along the axis of the wheels, to facilitate grid traversal. And, a microcontroller is used onto which the code is burnt which incorporates the usage of all theses sensors as well as the algorithm needed to efficiently achieve the problem statement.

This essentially encompassed the components needed to make the robot for the Autonomous Event of Robotix 2015, StepUp.

[1]: http://www.robotix.in/Images/Tuts/StepUp/image06.png
[2]: http://www.robotix.in/tutorials/category/auto/lfr
[3]: http://www.robotix.in/tutorials/category/auto/grid
[4]: http://www.robotix.in/Images/Tuts/StepUp/image04.png
[5]: http://www.robotix.in/Images/Tuts/StepUp/image02.png
[6]: http://www.robotix.in/Images/Tuts/StepUp/image00.gif
[7]: http://www.robotix.in/Images/Tuts/StepUp/image05.png
[8]: http://www.robotix.in/Images/Tuts/StepUp/image03.png
[9]: http://www.robotix.in/Images/Tuts/StepUp/image01.png
