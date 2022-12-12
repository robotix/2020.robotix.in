---
author: rbtxadmin
comments: true
date: 2013-01-12T08:13:20.000Z
layout: post
slug: brainstorming-a-c-r-o-s-s-3-grid-navigation
title: Brainstorming A.C.R.O.S.S 3 -  Grid Navigation
wordpress_id: 721
categories:
  - The Do It Yourself Series
---

**Introduction**

This tutorial covers the navigation of an autonomous bot on a grid without obstacles. The same code however can be easily modified for a grid with obstacles. An arduino code file is provided at the end.

**Materials Used**

Arduino Leonardo Line follower Hardware (Sensors, Motor drivers, Bot Chasis etc.) LCD Display (for Debugging purposes)

**The Concept**

From previous articles we know that the position of the bot on a grid is described by x and y coordinates. Grid following on a grid without obstacles is based on the assumption that a robot can reach any point on the grid if it is able to reach any point lying along the x or y axis from the current position. Now, we know that the movement along x or y axis from the current position will correspond to movement in any of the 4 directions (N, S, W, E). The fact that these directions remain fixed with respect to the grid, even when the orientation of the bot changes, is utilized to take the robot from one point to any other.

**How to Proceed?**

The building of a grid follower requires a working line follower bot. To detect intersections efficiently we place two additional LED-LDR sensors in addition to the three line following ones. After achieving line following, the bot is made capable of detecting intersections and then turning 90 and 180 degrees at them. Now we move on to the code that will allow the bot to navigate from one point to any other point. For this, firstly a (0, 0) point is fixed on the grid. 4 directions (say N, S, E, W) are fixed with respect to the grid. The code keeps a record of the bots current position as well as its current direction.

**Functions**

```
void line_follow()
{
  int left = ReadSensor(A1, 0, 0);
  int middle = ReadSensor(A2, 4, 0);
  int right = ReadSensor(A3, 8, 0);
  int exleft = ReadSensor(A0, 0, 1);
  int exright = ReadSensor(A4, 4, 1);
if(middle < s2 && left >s1 && right >s3)
{
  lcd.setCursor(13,0);
  lcd.print("For");
  forward();
}
else if(left < s1 && right > s3 && middle > s2)
{
  lcd.setCursor(13,0);
  lcd.print("Lef");
  turn_left();
}
else if(right < s3 && middle > s2 && left > s1)
{
  lcd.setCursor(13,0);
  lcd.print("Rig");
  turn_right();
}
else if(exleft < s0)
{
  lcd.setCursor(13,0);
  lcd.print("ELe");
  turn_left();
}
else if(exright < s4)
{
  lcd.setCursor(13,0);
  lcd.print("ELe");
  turn_right();
}
}
```

Before we start making a grid follower, a line follower is required. In the above code 5 LED-LDR sensors are used for this purpose.

**Detecting intersections and Moving Forward**

To update its current position, our bot is required to detect grid intersections while moving forward. Intersections refer to intersection of white lines on the A.C.R.O.S.S grid while moving forward refers to moving in the same direction that the bot is currently facing.

```
void grid_forward(int count)
{
  int temp=0;
  while(1)
  {
  int exleft = ReadSensor(A0, 0, 1);
  int exright = ReadSensor(A4, 4, 1);
  if(exleft < s0 && exright < s4)
    {
//Intersection detected
       stopp();
       delay(1000);
       temp++; //Increase the value of temp variable which holds the value of number of intersections crossed

       lcd.setCursor(8,1);
  lcd.print(temp);
  if(temp==count)
  {
//Bot stops on reaching required number of intersections
     stopp();
     return;
  }
else
{
  forward();
  delay(1000);
}
    }
  line_follow();
  }
}
```

The above function moves the bot forward for a certain number of node intersections. The number of intersections are indicated when a call is placed to the function. An intersection is detected when the extreme left and extreme right LDR sensors are both on the line. The bot stops when the value of temp variable becomes equal to count. In all other cases the bot stops for a while at the intersection, increments temp variable and moves forward.

**Turning at Intersections**

```
void grid_right()
{
  forward();//Code reaches here when bot is stopped at an intersection
  delay(1000);
  right_90(); //Bot moves a bit forward from the intersection and then turns at 0 radius
  delay(2000);
  while(ReadSensor(A0, 0, 1)>=s0)
  right_90();  //Keep turning till the extreme left sensor is on the line
  if(dir=='N')
  dir='E';
  else if(dir=='E')
  dir='S';
  else if(dir=='S')
  dir='W';
  else if(dir=='W')
  dir='N';
}
void grid_left()
{
  forward();  //Code reaches here when bot is stopped at an intersection
  delay(1000);
  left_90();//Bot moves a bit forward from the intersection and then turns at 0 radius
  delay(2000);
  while(ReadSensor(A4, 0, 1)>=s4)
  left_90(); //Keep turning till the extreme right sensor is on the line
  if(dir=='N')
  dir='W';
   else if(dir=='E')
  dir='N';
  else if(dir=='S')
  dir='E';
  else if(dir=='W')
  dir='S';}

void uturn()
{
  grid_right();
  right_90();
  delay(2000);
  while(ReadSensor(A0, 0, 1)>=s0)
  right_90();
  if(dir=='N')
  dir='E';
  else if(dir=='E')
  dir='S';
  else if(dir=='S')
  dir='W';
  else if(dir=='W')
  dir='N';
}
```

**Declaring and fixing grid constants**

[![]({{ site.baseurl }}/img/blog/2013/01/image0051.png)]({{ site.baseurl }}/img/blog/2013/01/image0051.png)[![]({{ site.baseurl }}/img/blog/2013/01/image007.png)]({{ site.baseurl }}/img/blog/2013/01/image007.png)

(0, 0) is fixed at lower left corner and directions according to the picture on the right. Thus positive y direction corresponds to N.

```
int cx=0, cy=0; //The current coordinates of the bot
int dir = ‘N’ ; //The current direction
```

Please note that the bot has to start always at the designated coordinates and directions declared above

**Updating The Directions**

The bots direction changes only on turning. The new direction depends on the direction of the turn and the current direction that the bot is facing. For example in the 90-degree right turn code above:

```
 if(dir=='N')
  dir='E';
  else if(dir=='E')
  dir='S';
  else if(dir=='S')
  dir='W';
  else if(dir=='W')
  dir='N';
```

This part of the code take the bot from one point to any other point lying along the x or y direction. For example from (0, 1) to (2, 1) that is along the positive x direction or from the (0, 1) to (0, 5) along the positive y direction. Let (dx, dy) correspond to the destination and (cx, cy) correspond to the current position. Now we have 4 cases:
- **Positive X direction** - Destination point has an x-coordinate that is of a higher value than the current x-coordinate
- **Negative X direction**
- **Positive Y direction**
- **Negative Y direction**

Let us look at the first case in detail. Now the bot is supposed to move in the positive x-direction from its current position. Now depending on which direction the bot is facing currently, we have 4 more cases:
- **Facing North:** Thus the bot should take a right turn from current position and move the required number of steps
- **Facing South:** The bot should take a left turn from the current direction and move the required steps
- **Facing West:** The bot should take a u-turn and move the required number of steps
- **Facing East:** The bot should simply move forward since it is already facing the positive x-direction

Similarly we can form the other 4 cases. This has been done below:

```
void move_robot(int dx, int dy)
{
  if(dx-cx>0 && dy-cy==0)
  { //Move along positive x-axis
    if(dir=='N')
    {
      grid_right();
      grid_forward(dx-cx);
       }
    else if(dir=='E')
    {
      grid_forward(dx-cx);
    }
    else if(dir=='S')
    {
      grid_left();
      grid_forward(dx-cx);
    }
    else if(dir=='W')
    {
      uturn();
      grid_forward(dx-cx);
    }
    cx+=dx-cx;;  
    lcd.setCursor(10,1);
    lcd.print(dir);
    lcd.setCursor(12,1);
    lcd.print(cx); 
    lcd.setCursor(14,1);
    lcd.print(cy); 

  }


  if(dx-cx==0 && dy-cy>0)
  {//Move along positive y-axis

    if(dir=='N')
    {
      grid_forward(dy-cy);
    }
    else if(dir=='E')
    {
      grid_left();
      grid_forward(dy-cy);
    }
    else if(dir=='W')
    {
      grid_right();
      grid_forward(dy-cy);
    }
    else if(dir=='S')
    {
      uturn();
      grid_forward(dy-cy);
    }
    cy+=dy-cy;
    lcd.setCursor(10,1);
    lcd.print(dir); 
    lcd.setCursor(12,1);
    lcd.print(cx); 
    lcd.setCursor(14,1);
    lcd.print(cy); 

  }
  if(dx-cx<0 && dy-cy==0)
  {//Move along negative x-axis

    if(dir=='N')
    {
      grid_left();
      grid_forward(cx-dx);
       }
    else if(dir=='S')
    {
      grid_right();
      grid_forward(cx-dx);
    }
    else if(dir=='W')
    {
      grid_forward(cx-dx);
    }
    else if(dir=='E')
    {
      uturn();
      grid_forward(cx-dx);
    }
    cx-=cx-dx;
    lcd.setCursor(10,1);
    lcd.print(dir); 
    lcd.setCursor(12,1);
    lcd.print(cx); 
    lcd.setCursor(14,1);
    lcd.print(cy); 

  }
  if(dx-cx==0 && dy-cy<0)
  {//Move along negative y-axis

    if(dir=='W')
    {
      grid_left();
      grid_forward(cy-dy);
       }
    else if(dir=='E')
    {
      grid_right();
      grid_forward(cy-dy);
    }
    else if(dir=='S')
    {
      grid_forward(cy-dy);
    }
    else if(dir=='N')
    {
      uturn();
      grid_forward(cy-dy);
    }
   cy-=cy-dy;
  lcd.setCursor(10,1);
  lcd.print(dir); 
  lcd.setCursor(12,1);
  lcd.print(cx); 
  lcd.setCursor(14,1);
  lcd.print(cy); 

  }
```

**Moving to a General Point**

Now that we can move along x and y axis, moving diagonally to any point on the grid is possible. For this we simply move the required number of steps in the x direction first then move the required steps in the y direction. It can be vice-versa also.

```
void move_general(int gx, int gy)
{
  move_robot(gx, cy);
  move_robot(gx,gy);
  return;
}
```

**Looking Ahead**

Since the recursive backtracker algorithm requires the bot to move one step at a time and that too along the axis, we can easily implement it using the above code and an additional obstacle sensor. The only change would be to check if the node in front is free using the obstacle sensor, before the bot tries to move to it. For the Arduino code file, click [sketch_jan05a.ino]({{ site.baseurl }}/img/blog/2013/01/sketch_jan05a.ino_.zip) For doubts, suggestions and feedback send a mail to aditya@robotix.in
