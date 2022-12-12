---
layout: post
title: "drivemechtut"
categories:
  - mechanical
redirect_from: "/tutorials/category/mechanical/drivemechtut/"
---
#### Differential Drive

  
**![][1]{:.img-responsive}**

**A differential drive is the most basic drive, which consists of two sets of wheels that can be driven independently.**

This is the most commonly used form of locomotion system used in robots as it's the simplest and easiest to implement.

It has free moving wheels in the front accompanied with a left and right wheel. The two wheels are driven by different motors. Simplicity and ease of use makes it the most preferred system by beginners

Independent drives makes it difficult for straight line motion. The differences in motors and frictional profile of the two wheels cause them to move with slight turning effect  
The above drawback must be countered with appropriate feedback system. Suitable for human controlled remote robot.

To turn the vehicle (or robot)LEFT or RIGHT, wheels are rotated at "different" speeds or in "different" directions.

| ----- |
|  **MOTION** |  **LEFT WHEEL** |  **RIGHT WHEEL** |
|  **Right Turn** |  **Counter Clockwise** |  **Clockwise** |
|  **Left Turn** |  **Clockwise** |  **Counter Clockwise** |
|  **Forward** |  **Clockwise** |  **Clockwise** |
|  **Backward** |  **Counter Clockwise** |  **Counter Clockwise** |

**![][2]{:.img-responsive}  
This video shows how to build a Differential Drive:  
<http://www.youtube.com/watch?v=Y6K4N19bbfk>**

This video shows a working Differential Drive:  
<https://www.youtube.com/watch?v=aE7RQNhwnPQ>

 

#### Car Type Drive

  
**![][3]{:.img-responsive}**

The car type drive is the most common in real world but not in robot world. It is characterized by a pair of driving wheels and a separate pair of steering wheels The translation and rotation are independent of each other. But translation and rotation are interlinked hence this system faces severe path planning problem

Four wheels are more efficient compared to three or two wheels. The first two of the four wheels can be used to steer and the next two to drive the robot. Balancing a four wheeled robot is never an issue. Most everyday cars we use are four wheeled and the example is enough to prove its existence and capabilities.

 

**Although the four wheels can be combined and driven in different ways, two of the most common driving and steering methods used for robots with four wheels are Ackerman steering and differential drive. **

**Disadvantages Of Car Type Drive : The turning mechanism must be accurately controlled. A slight inaccuracy may cause large odometry errors The system is Non – Holonomic hence path planning is extremely difficult as well as inaccurate There are no direct directional actuators**

**![][4]{:.img-responsive}**

#### Skid Steer Drive

  
**A close relative of the differential drive system. It is mostly used in tracked machines e.g. tanks. Also finds application in some four / six wheeled robots**

The left and right wheels are driven independently. Steering is accomplished by actuating each side at a different rate or in a different direction, causing the wheels or tracks to slip, or skid, on the ground.

The wheels typically have no separate steering mechanism and hold a fixed straight alignment on the body of the machine. By turning the left and right wheel pairs at different speeds, the machine turns by skidding, or dragging its fixed-orientation wheels across the ground. The extremely rigid frame and strong wheel bearings prevent the torsional forces caused by this dragging motion from damaging the machine.  
The skid-steering vehicle is turned by generating [differential][5] velocity at the opposite sides of the vehicle. They can be converted to low ground friction by using specially designed wheels such as the [Mecanum wheel][6].  
Skid-steer loaders are capable of zero-radius, "pirouette" turning, which makes them extremely maneuverable and valuable for applications.

**![][7]{:.img-responsive}**

#### Synchronous Drive

**As the name suggests, it uses synchronous rotation of its wheels to achieve motion & turns  
It is made up of a system of motors.   
One set of which drive the wheels and the other set turns the wheels in a synchronous fashion  
The two sets can be directly mechanically coupled as they always move in the same direction with same speed**

  
**![][8]{:.img-responsive}**

#### Pivot Drive

**The most unique type of Locomotion system**

It is composed of a four wheeled chassis and a platform that can be raised or lowered  
The wheels are driven by a motor for translation motion in a straight line

For rotation one motor is needed to lower/raise the platform & another to rotate the chassis around the platform

This system can guarantee perfect straight line motion as well as accurate in – place turns to a desired heading

  
**![][9]{:.img-responsive}**

[1]: /img/tutorial/mechanical/drivemech/pic1.png
[2]: /img/tutorial/mechanical/drivemech/pic2.jpg
[3]: /img/tutorial/mechanical/drivemech/pic3.png
[4]: /img/tutorial/mechanical/drivemech/pic4.PNG
[5]: http://en.wikipedia.org/wiki/Differential_(mechanical_device)
[6]: http://en.wikipedia.org/wiki/Mecanum_wheel
[7]: /img/tutorial/mechanical/drivemech/pic7.PNG
[8]: /img/tutorial/mechanical/drivemech/pic8.PNG
[9]: /img/tutorial/mechanical/drivemech/pic9.PNG
