---
author: rbtxadmin
comments: false
date: 2012-12-26T11:16:16.000Z
layout: post
slug: brainstorming-a-c-r-o-s-s-1-grid-solving-algorithms
title: Brainstorming A.C.R.O.S.S 1 - Grid Solving Algorithms
wordpress_id: 578
categories:
  - The Do It Yourself Series
---

Welcome to Brainstorming ACROSS. This is a series of articles that will cover various aspects of the problem statement of the autonomous event [ACROSS](http://robotix.in/across) and their possible solutions. This particular article will cover the _Recursive Backtracker_ algorithm that can be used by a bot to navigate on an 8x8 grid containing obstacles at unknown locations. Note that the article does not cover on how to implement this algorithm in an autonomous robot. That will be covered in future articles. At the end you can also find the link to a software for testing grid solving algorithms. If you are a lazy reader, download the offline pdf here [Brainstorming ACROSS](http://robotix.in/img/blog/2012/12/Brainstorming-ACROSS1.pdf) before you begin.

# **Objective**
The objective is to go from point on the 8x8 to any other point. As an additional constraint, we consider that the arena in unknown to the bot. In other words, when the bot starts moving, it has no knowledge of the location of obstacles on the grid. It knows only its starting position and the required ending position.

# **Location**
[![](http://robotix.in/img/blog/2012/12/image001.png)](http://robotix.in/img/blog/2012/12/image001.png)

Figure 1 The 8x8 ACROSS Grid

Let the location of bot at any point be denoted by the 2D coordinate system that is by X and Y coordinates. In the arena shown below, each square denotes one such point. The _point (0, 0)_ is denoted by the _top leftmost square_.

[![](http://robotix.in/img/blog/2012/12/image003.png)](http://robotix.in/img/blog/2012/12/image003.png)

Figure 2 The ACROSS Round 1 Arena
- Grey denotes an obstacle in this case raised platforms
- Orange denotes the final location in this case a gap between two platforms (3, 3)
- Dark Blue denotes the initial location (0, 7)
- Light Blue lines will denote the path taken by the robot

# **Movements**
From any point on the grid, the bot can move in four directions:
- North - (x, y) to (x, y-1)
- East - (x, y) to (x+1, y)
- West - (x, y) to (x-1, y)
- South - (x, y) to (x, y+1)

# **Algorithm**
At each coordinate of the grid, the basic roles of the bot remain the same. As a result we need only one basic function to navigate which can repeatedly called. The roles can be divided into two parts:
- _Base Cases:_ These indicate whether the current location is valid that is whether it is possible to move to it or not. They also indicate if the bot has reached the destination thereby indicating it is time to stop.
- _Recursive Parts:_ These scan the four positions in the four directions around the current position to check if any of them satisfy the base cases. In programming terms this involves placing a call to the same function but with a different set of arguments, which in this case correspond to a position. Hence this part is termed as recursive and it is responsible for the robot advancing through the maze.

# **Recursive Parts**
Let's start by assuming there is already some algorithm that finds a path from some point in a maze to the goal and call it _RecurPath (x, y)_.

[![](http://robotix.in/img/blog/2012/12/image006.png)](http://robotix.in/img/blog/2012/12/image006.png)Let us assume that the robot managed to reach a point (0, 4) using this function. Now it is required to check all the four directions to find the path ahead. Thus we place four calls:
- _RecurPath (0, 3) - North_
- _RecurPath (1, 4) - East_
- _RecurPath (0, 5) – South_
- **RecurPath (-1, 3) - West**

Note that these checks can be performed in any order. Now since going west will mean going out of the grid, that function call should return something to indicate the same. While rest of the directions are valid and the function should indicate the same.

Generalizing this, we can call _RecurPath ()_ recursively to move from any location in the maze to adjacent locations. In this way, we move through the maze.

# **Base Cases**
It's not enough to recursively advance through the maze. We also need to determine when to stop.

One such _base case_ is to stop when it _reaches the goal_.

The other base cases have to do with moving to invalid positions. For example, we have mentioned how to search North of the current position, but disregarded whether that North position is legal. In order words, we must ask:
- _Is the position in the maze_ (...or did we just go outside its bounds)?
- _Is the position open_ (...or is it blocked with an obstacle)?

# **Pseudo-code**

```
RecurPath(x,y) {

Move robot to (x, y)

if (x,y outside maze) return false

if (x,y is goal) return true

if (x,y not open or is marked visited) return false

mark x,y as visited

if (RecurPath(North of x,y) == true) return true

if (RecurPath(East of x,y) == true) return true
if (RecurPath(South of x,y) == true) return true
if (RecurPath(West of x,y) == true) return true

Move robot to (x, y)

return false

}
```

Marking x,y as visited is necessary to prevent the bot from going around in circles. For the explanation to the last call to _Move robot to (x,y) _see the Dead Ends section of this post.

To use to find and mark a path from the start to the goal with our given representation of mazes, we just need to:
1. Locate the start position (call it _startx_, _starty_).
1. Call _RecurPath(startx, starty)_
1. Re-mark the start position.

[![](http://robotix.in/img/blog/2012/12/image008.png)](http://robotix.in/img/blog/2012/12/image008.png)

Figure 4 Sample Run

You can verify that each colored square that is part of the final path satisfies one of the 'if statements' of the Pseudo-code.  As an example lets see what happens when the bot is at (0, 0):

First lets go one step backward to position (0, 1).  At this position:

[![](http://robotix.in/img/blog/2012/12/image010.png)](http://robotix.in/img/blog/2012/12/image010.png)

Figure 5 At position (0, 1)

```
RecurPath(0,1) {

Move robot to (x, y)

if (x,y outside maze) return false

if (x,y is goal) return true

if (x,y not open or is marked visited) return false

mark x,y as visited

if (RecurPath(North of x,y) == true) return true  [Highlight 1]

if (RecurPath(East of x,y) == true) return true
if (RecurPath(South of x,y) == true) return true
if (RecurPath(West of x,y) == true) return true

Move robot to (x, y)

return false
}
```

Since none of the base cases are satisfied, code reaches the highlighted step, placing a call to _RecurPath (0, 0). _Note that the call has not yet finished executing.

[![](http://robotix.in/img/blog/2012/12/image012.png)](http://robotix.in/img/blog/2012/12/image012.png)

Figure 6 At position (0, 0)

```
RecurPath(0,0) {

Move robot to (x, y)

if (x,y outside maze) return false

if (x,y is goal) return true

if (x,y not open or is marked visited) return false

mark x,y as visited

if (RecurPath(North of x,y) == true)  return true [Highlight RED]

if (RecurPath(East of x,y) == true) return true [Highlight GREEN]
if (RecurPath(South of x,y) == true) return true
if (RecurPath(West of x,y) == true) return true

Move robot to (x, y)

return false

}
```

Thus the robot moves to (0, 0). Reaches the code highlighted in Red, placing a call to _RecurPath(0, -1). _This will return false since the point is outside the maze. So the code proceeds to the next step, calling _RecurPath(1, 1). _Thus the robot moves to (1, 1) and in this manner the sequence keeps going on. The sequence will end only when the robot reaches the goal, that function call will then return true and subsequently all the calls before it_ _will return true as well. Thus the output of our initial call to _RecurPath(startx, starty) _will be true.

# **Dead Ends and Backtracking**
So what happens if the bot takes a wrong turn, a path, which leads to a dead end, or a path, which we know wont reach, the end point? Let us consider this run again:

[![](http://robotix.in/img/blog/2012/12/image014.png)](http://robotix.in/img/blog/2012/12/image014.png)

Figure 7 At position (5,4)

Now since the North is blocked so the bot turns to East calling _RecurPath(6,4):_

```
RecurPath(6,4) {

Move robot to (x, y)

if (x,y outside maze) return false

if (x,y is goal) return true

if (x,y not open or is marked visited) return false

mark x,y as visited

if (RecurPath(North of x,y) == true)  return true [Highlight RED]

if (RecurPath(East of x,y) == true) return true [Highlight RED]
if (RecurPath(South of x,y) == true) return true [Highlight RED]
if (RecurPath(West of x,y) == true) return true [Highlight RED]

Move robot to (x, y)

return false

}
```

Since all directions are either marked visited or are blocked,_ Move robot to (6,4)._ Since the bot is already there the call ends, returning false. Now the code goes back to the previous call _RecurPath(5,4)_ with the bot still at (6,4)

```
RecurPath(5,4) {

Move robot to (x, y)

if (x,y outside maze) return false

if (x,y is goal) return true

if (x,y not open or is marked visited) return false

mark x,y as visited

if (RecurPath(North of x,y) == true)  return true   //Code reaches here

if (RecurPath(East of x,y) == true) return true [Highlight RED]
if (RecurPath(South of x,y) == true) return true [Highlight RED]
if (RecurPath(West of x,y) == true) return true [Highlight RED]

Move robot to (x, y)

return false

}
```

Again the code reaches Move robot (5,4) moving the bot from (6,4). In this way the bot backtracks on reaching a dead end.

# **Resources**
Software that demonstrates the above algorithm can be found here [MinotaurPathfinder](http://robotix.in/img/blog/2012/12/MinotaurPathfinder.zip) Extract the zip file.  You can find more information on how to use in the Readme file contained within. For a source code of the software, written in C# (using Visual Studio 2012), click [MinotaurPathfinder_Source](http://robotix.in/img/blog/2012/12/MinotaurPathfinder_Source.zip). Note that the software only marks the final valid path. The robot might have to move to additional squares and backtracked on finding a dead end.

This tutorial has been compiled using the following resources:

[http://www.cs.bu.edu/teaching/alg/maze/](http://www.cs.bu.edu/teaching/alg/maze/)

[http://www.astrolog.org/labyrnth/algrithm.htm](http://www.astrolog.org/labyrnth/algrithm.htm)

[http://www.dotnetperls.com/pathfinding](http://www.dotnetperls.com/pathfinding)

# **Looking Ahead**
In future articles we will look at more algorithms, ways to a map a grid, how to implement the recursive backtracker in a bot and much more. Stay tuned for more. You can also try to optimize the algorithm according to the A.C.R.O.S.S arena. One way can be by prioritizing which direction is checked first at each square. Remember that a juicy cash prize is waiting for the bot with the Best Algorithm in ACROSS in addition to the top prizes. May the best algorithm win !!

For feedback, suggestions and doubts send a mail to aditya@robotix.in
