# Tutorials

#### Cascade Tutorial

Let us see the basic problem statement:

**"Build a manually controlled robot capable of traversing vertical rods while shooting  terrorists ."**

So, your robot needs to possess the following mechanisms:

* Traversal on the vertical rods
* Shooting Mechanism

**"Keep it simple and sturdy"**

**How this Tutorial works :**  
This extensive tutorial acts as a  guide for an enthusiast like you to explore your own imagination and incorporate  them in your robot for ROBOTIX'15 edition.The tutorial lists out all the skills that the event requires your bot to have and tells you exactly how you can implement each of them. Look out for the words in blue because they will lead you to external pages which show exactly how to build that particular mechanism. And finally, find our 'Tips' to put together all your mechanisms and build a winning robot!

In case you have specific doubts you need answered, we have a [Facebook Page][1] where we would love to hear from you.

  
**Mechanisms for Traversal:**

**Mechanism 1:**

This mechanism explores the option of traversal with the help of central rods.However, you could use any other mechanism you come up with.

**The following design could help you achieve the target easily:**

* The chasis of the robot has a hole in it, sufficient enough to allow the central rod to pass through it.
* Also, wheels are fixed adjacent to the hole of the chasis at an angle of 120 degrees to provide an overall grip and to help it roll over the rod.

  
A simple chasis can be made with a hole and wheels attached to it with the hole slightly bigger in diameter to let the rod pass through it.There would be two vertical rods to provide better grip to the robot and to prevent it from slipping.  The picture shown below gives you an idea :

![][2]

![][3]

The circular cavity allows the rod to pass through it. The two adjacent wheels roll over the rod and make the robot move forward or backward along the central rod.

 

**Mechanism 2:**  
This mechanism again involves using the two central rods given for traversal.

* The robot will have two pieces of pipe with a slightly larger diameter than the central rods attached sideways for traversal.
* At the end ot the pipes you could place three wheels at 120 degree angle or you could even use castor wheels.
* The pipe structure and the placement of the wheels will provide a robust mechanism for traversal.
* Between the two rods we have circular disc which could rotate with the help of a motor beneath them.
* This disc will have a shooting mechanism mounted on top of it.

 

![][4]

  
                                                 _**Front view of the robot**_

 

![][5]

**                                           **_**The circular discs has shooting mechanism**_

![][6]

**SHOOTING MECHANISMS**  
**Simple Spring Mechanism:**  
This simple mechanism is based on mechanical stored energy in a spring. A spring is wound up, held, and released at certain moment of time.

An elucidated explanation is as follows -

* This mechanism consists of a motor that stretches a spring attached to a rod backwards and then releases it in an instant, thereby pushing the rod forward with momentum high enough to pop the corks.
* The motor to be used is a high torque low rpm motor.
* The rod attached to the motor pushes the piston, and stretches the spring.
* When the rod reaches the limit, it disconnects from the piston and the springs rapidly returns to unstretched state.
* This pushes the piston forward rapidly.

![][7]

  
The shooting mechanism based on the same concept and using rubber bands instead of a spring can be made easily.The pictures of the shooting mechanism implemented in our bot will give you a clear picture as to how you should go about it.

Initial position of the hammer when the rubber bands are unstretched:

![c6.jpg][8]

When the rubber bands are to its maximum limit:

![c8.jpg][9]

Final position after the shooting:

![c7.jpg][10]

 

**RACK AND PINION:**

A simple mechanism consisting of a motored round gear (Pinion) and a rack can be transformed to a shooting mechanism.

  
Let us first understand what is Rack and Pinion:

* A rack and pinion is a type of linear actuator that comprises of a pair of gears which convert rotational motion into linear motion.
* One of the hands would be connected to the rack and pinion arrangement and will be powered by a motor and the other hand will be stationary.

![][11]

This video would help you understand better and implement the same in the design of your bot.

_**Power Supply**_

* The participants will be provided power during the event in the form of power sockets of AC 230 V. You can choose to use an adaptor or build your own rectifier circuit to power your motors. Remember to use an appropriate voltage for your motors to avoid any damage during the run.
* Participants can also choose to bring their own power source to the arena as this reduces the effort of handling too many wires. Safety is of utmost importance, so do make sure that the battery pack and all exposed wires are sufficiently insulated.
* It is suggested that only one person handles the bot throughout the event to minimise the risk of shock. You have to allow more people to handle the bot. Multiple controllers are always there.

  
_**Additional Resources**_  
To prepare the controls of the robot, you need to create a switch panel. For each motor, you would need an H-Bridge circuit. To learn more, go to: <http://www.mcmanis.com/chuck/robotics/tutorial/h-bridge/index.html>  
A power supply of 220V AC will be provided to you. According to your requirement, get yourself an adaptor or else you may want to make your own rectifier circuit.

[1]: https://www.facebook.com/robotixiitkgp
[2]: http://www.robotix.in/Images/Tuts/Cascade/image01.jpg
[3]: http://www.robotix.in/Images/Tuts/Cascade/image04.jpg
[4]: http://www.robotix.in/Images/Tuts/Cascade/image02.jpg
[5]: http://www.robotix.in/Images/Tuts/Cascade/image06.jpg
[6]: http://www.robotix.in/Images/image00.jpg
[7]: http://www.robotix.in/Images/Tuts/Cascade/image03.png
[8]: https://lh3.googleusercontent.com/A41copWNnl6iUWL4d_3OHbY2xFFf3PYJJpJBiChsd7mxeIb0NEC87NtgO_wNjNXzlhSNDE5quMhvmwekaqmx5aEInExh4cw7USfNBy3TVqxAScvLqs6VS7xTnpLKfEt-mQ
[9]: https://lh5.googleusercontent.com/KKrYlHgW3YC9nuPmsCjphYVGxIZ5nBowpdmQf5l8837WQn6a4dQvyL9Td8VS7b9cSNhtnusdymEUth85BfgQw0NYAtCYB2vrJuPVQsm954jigtnZadVAE05bu78YzukY2Q
[10]: https://lh4.googleusercontent.com/ymmhBlJHiPUHsjw2KAMwbENGiMVD2zs5hIw8E5xPQzwlGxqeSfdKIVWGLdaQ5HdDH5Uf3BZm2mTCgKdcvtzt4Y1HJc0CmHUldPlKV8I-0gbUTmU9oFOMhdRhSw-UTp52Ww
[11]: http://www.robotix.in/Images/Tuts/Cascade/image05.jpg
