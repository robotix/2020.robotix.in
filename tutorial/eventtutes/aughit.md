# Tutorials

#### AugHit Tutorial

**AUG-HIT DIY**

**TOOLS**:

Soldering Iron  
Laptop  
Visual Studio / MATLAB / Any IDE with an Image Processing Library  
AVR programming software / Arduino IDE

  
**MATERIALS**:

2 Wheels  
1 Castor Wheel  
Metal Chassis  
2 DC motors  
1 Development Board  
1 Microcontroller (ATmega 16/32/328)  
1 Programmer (ISP/Arduino)  
Motor Driver (L293D)  
Relimates  
Bluetooth Communication module/ USB-UART/ Xbee

  
**PROBLEM STATEMENT**:

Build an Image Processing robot which can play the Break Bricks game in a virtual arena.

We'll split the Problem Statement into Modules.  
In this DIY , we'll step by step discuss each module. The first thing to do is to make a mobile robot capable of moving according to instructions recieved from the laptop.  
 

**PART 1 - A REMOTE CONTROLLED ROBOT**:

_**LOCOMOTION**_

The robot can be made to move by using a differential drive as the base. With independent motors for the left and right sides of the base, differential drives allow the robot to move in all directions and turn as well. How the motors will rotate will be determined by the voltage supplied to the motor by the motor driver circuit, which in turn will depend on the instructions sent to the motor driver by the microcontrollers. For more details on differential drives, please check here.  
![][1]

**    Fig: The schematics of a differential drive**

![][2]

**  Fig: An actual differential drive**

But for this event, we actually only need 1 dimensional motion of the robot, i.e either forward or backward, there would be no left or right turns involved, so you can also achieve it by using a BEVEL Gear Mechanism ( or MITER Gear Mechanism ), which uses a single motor to achieve rotation of a shaft (subsequently connected to 2 wheels).

_**MICROCONTROLLER**_

Conceived to be the brain of the robot, the microcontroller is the device that allows us to control the robot and make it autonomous. By pre-programming it, we can make it give different outputs based on different inputs and instructions received, and thereby the robot acts accordingly. For a more elaborate understanding of the working of an AVR microcontroller, please visit here. Essentially you only need to program the microcontroller on your robot, to move in a particular direction, based on the character received by it from the laptop.

![][3]

Fig: The development board for the microcontroller from Robokits

  
Since we need only one dimensional movement (i.e Forward or Backward),  
The code to be burnt on your microcontroller is as follows:

The instruction from the microcontroller is sent to the motor driver circuit (assumed to be connected to Port B here), which then sends it to the motors. Please note that you must test which combination of voltages makes the motor rotate in which direction – the bit sequences you send based on the characters received will depend on that.

![][4]

**Fig: A schematic diagram of a motor driver circuit**

![][5]

**Fig: An actual motor driver circuit with an L293D**

  
You can also use an Arduino instead of using AVR Atmega and Development Board. In that case, the code to be burnt will be as follows:

 

**SERIAL COMMUNICATION**

Once we have linked our computer to the microcontroller via the connections we discussed earlier, we need to be able to send instructions to it through our code. In our project that we shall use for our Image Processing application in robotics, we have to include files and use certain functions for starting the serial communication device, and then sending data to the microcontroller through the device. We use files that have already been made for this purpose. These are:  
 

tserial.h – A header file for starting the serial device  
tserial.cpp – The C++ program that actually initializes the device  
bot_control.h – The file which contains the definitions of the functions which shall be used for the purpose of serial communication [send_data(), startDevice(), stopDevice() ,etc.]  
 

These files are available for download from our website. After being downloaded, they need to be included in the Visual Studio project you are using. What you need to do is gather all these three files in a directory and add the path of that directory in Project-> Properties->C/C++->General->Additional Include Directories, and apply the changes to the settings. Also, Project-> Properties->Configuration Properties->General->Character set should be changed to Not Set.

The program below is a standard one which shows how to send characters through the serial communication device, via the code in your Visual Studio project.

 

As you can see, all of the above will help you to create a robot that is capable of moving in response to commands that you send to it from the laptop.

_**PART 2 – COMPUTER VISION**_  
Before proceeding with this module, we would request you to go through the set of general tutorials for computer vision, for both MATLAB and OpenCV, also found on our website. It is quite extensive, and we will assume that a working knowledge, as put forward there, is in the grasp of the reader of this tutorial.

The major sub-tasks that the computer vision will have to take care of are:

  
_**DETECTING THE POSITION OF THE BALL IN THE GAME**_:

We'll use the technique of Template Matching to find the position of the ball.

**What is template matching?**

Template matching is a technique for finding areas of an image that match (are similar) to a template image (patch).

**How does it work?**

We need two primary components:

**Source image (I):** The image in which we expect to find a match to the template image  
**Template image (T):** The patch image which will be compared to the template image  
 

Our goal is to detect the highest matching area:

![][6]\+  ![][7]x2 = ![][8]

You can read up on Template Matching here: <http://docs.opencv.org/doc/tutorials/imgproc/histograms/template_matching/template_matching.html>

The sample code is also provided in the link above, so you can go through it and implement it in your solution.

  
_**Game Play**_

**Using the Kalman Filter**

While, extracting the readings of the ball centre from the video, you may get erroneous readings in between. To resolve this issue, use the Kalman Filter to smoothen out such disturbances and get a predicted reading of the position of the ball.

You may read up on the Kalman Filter here : <http://www.cs.unc.edu/~welch/kalman/>

A code sample for OpenCV Tracking is given here : <http://opencvexamples.blogspot.com/2014/01/kalman-filter-implementation-tracking.html#.VJhBgsAA>

<http://www.morethantechnical.com/2011/06/17/simple-kalman-filter-for-tracking-using-opencv-2-2-w-code/>

Kalman Filter for MATLAB : <http://in.mathworks.com/help/control/ug/kalman-filtering.html?nocookie=true>

**Trajectory of the Ball**

Once you get the shape from the above methods or otherwise, we need to proceed to tracking the ball and predicting where it will reach so that the paddle can be correctly moved to that position. For this we need to find out the trajectory of the ball (equation of the line the ball is currently moving in).

We also need to make sure that while calculating the trajectory, we dont involve a set of ball positions having changes in direction in between. For eg, if in between our set of positions, the ball collides with the wall and starts moving from Right->Left instead of the earlier Left->Right, it will mess up our calculated equation. So make sure that the function takes all readings after the last encountered wall collision.

**Wall Collisions**

As mentioned above, we need to know when the ball is going to strike the wall in the future or if it did earlier during the gameplay. This can be done by having a data structure for all wall collisions detected in the given video. Each entry could have the two attributes -> Time and Position. While processing the video, we know that the X-coordinate value will increase while going from Left->Right and decrease while going from Right->Left. Now you just need to maintain a FLAG variable which is TRUE while the X-coordinate [As obtained from the Kalman Filter] is increasing and FALSE when it is decreasing. Whenever, there is a change in the FLAG, add an entry to your data structure with the time and position recorded. After processing the video, you will have all the wall collisions. Infact, you could also start processing the video from backwards since, you only need the last wall collision. Once you get that, move to the next step.

  
**Finding the Trajectory**

Now that you have the last wall collision and its time, you need the velocity of the ball obtained from the Kalman Filter [See Above]. This will give you the direction of motion. Now check if the direction of motion ever intersects with the wall boundaries above the line of the paddle. If it doesn't, then simply find the intersection point of the direction of motion and the line of the paddle and send instructions to your robot to move the paddle to that point. If, the ball direction of motion intersects with the wall, simply reverse the sign of the x-coordinate and find if it again intersects with the other wall. Continue this process till there are no more intersections of the direction of motion with any of the walls above the line of the paddle. At the end, find the intersection point of the line of the paddle and the direction of motion. This will be the new position of the paddle.

**Moving the Robot to the New Position**

You will be given the live feed of the robot. Now that you have the predicted position from the previous step, you just need to move the bot till its centre is between a certain threshold of the predicted position. You may again use the Kalman Filter to smoothen out the readings of the paddle centre.

**Scoring more points by predicting collisions with Bricks **

There are some more difficult aspects to the event that some of you may feel particularly challenged by. Since they are not essential to solving the problem statement as such, but rather for obtaining bonus points and boosting your score, we won't be elaborating upon them in detail but rather providing some ideas you can try out.

**Using Semicircular Paddle**

At any point in the game, you can always get the following information from the video :

**Number of bricks left and their position**  
**Round 2** : **Number of bricks declared to be false after first hit**. These should be avoided. There is a penalty for hitting a false brick directly (If it is the first brick to be hit after ball has rebounded from paddle).  
**Position of Ball**  
**Predicted trajectory of ball**  
**Final position of ball at the line of paddle and its trajectory at that time**  
**Round 3** **: Velocity and predicted position of moving bricks, if any** (Using Kalman Filter)

Since we have all this information, and we know the size and shape of the paddle, you can make your own simulation of the game and try out how the return trajectory of the ball changes on rebounding from various points on the semi-circular paddle. The return trajectory will be the equation of a reflected ray from a circle. Once you get this trajectory, simulate the course of the ball throughout and check the score obtained. You will also have to consider possible collisions with the wall after the ball has left the paddle. The position with the maximum score should be used for moving the bot.

Though this seems to be brute force, you can check positions in certain intervals only as minute variations wont make a difference considering the width of the bricks. Say, we check for positions at 10, 20, 30….90, 100, ….170 on the paddle. You also need to check if your trajectory directly collides with a false brick as this will lead to deduction of points.

For Moving Bricks, similar approaches for finding intersection of ball trajectory and brick position can be used.

**Using Rectangular Paddle **

The same approach used above should work for this also. Here, the reflected ray will vary differently (reflection of a ray from a line) but the final motive will be the same, to maximise the score obtained.

[1]: http://www.robotix.in/Images/image00.jpg
[2]: https://lh6.googleusercontent.com/fV9-RA5zw1I-m1A9QApJyoDmVA2tZ0BQeEDEfnoLgRQt0Udgrf-WFfmGxIiBF6GwsP3zBNTGzQYc_6qIcaWFBOxef-HyYwgvQDAZiUytlhRhVfiZf31fDn8Dlw
[3]: http://www.robotix.in/Images/image01.jpg
[4]: https://lh3.googleusercontent.com/8la__0BNHbSDnXU5MEXHaROhp02gn_RQIUgEtiUnYLBjF_tFx7M31mqxwkU1W1UtvHeo-hYYCqm-mFzC6IpDG8crwHu4D1SOAdJWQaGXuDfyvUhEi6Dmg6iI2rdaJ_TLlg
[5]: https://lh6.googleusercontent.com/L43Qymjq6eKnsIURwV1eESNBCdIcq2S8SbXmOZZrUk9HTOn_2Rgd_H-lCAiFj88nI13xWHinvO29qnFdn1CT_u6eUlS0zzKlvAAs_JBIj8to7RG2an0Ht2bfOaL_hx4jSg
[6]: https://lh6.googleusercontent.com/dYu8Kajvnia3oU_wrM48oCWaJnYlUzqMYTezsDBfz5n0KWY6fxv6RAzpHsCCl-lWncNmvXQtpJWz3PCNvz6m9DpaoSosat2e5i8GqsGMCil5MWEEgc5sFVTSjQY3KcHUZQ
[7]: https://lh3.googleusercontent.com/0mWTgp-BtXGbmfszmwFg5x1AJbk36lmWHPns5cJf2UP4s5hONOpU5QL9aiU2FjG_1GNzWyHg594KryDhmihlT5DaJtHLsin6Nz_cn56yVNuBZGZr_XO79Fx4lO29q-odgA
[8]: https://lh5.googleusercontent.com/WJPigMhGoJdSRoUbP7uqEGmiK0HmOmhqg2AkRqQCuWwWENl31jG9F24NWTTLSOkcp6_QhkQF6GBK_nlYxAhVq1xlB93UXEW9MFbMgKNNk5tbIqntm3tMrwbR_O9O4zVFPQ
