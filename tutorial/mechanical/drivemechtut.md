# Tutorials

#### Differential Drive

  
**![][1]**

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

**![][2]  
This video shows how to build a Differential Drive:  
<http://www.youtube.com/watch?v=Y6K4N19bbfk>**

This video shows a working Differential Drive:  
<http://www.youtube.com/watch?v=QHQ6w-77qIo>

 

#### Car Type Drive

  
**![][3]**

The car type drive is the most common in real world but not in robot world. It is characterized by a pair of driving wheels and a separate pair of steering wheels The translation and rotation are independent of each other. But translation and rotation are interlinked hence this system faces severe path planning problem

Four wheels are more efficient compared to three or two wheels. The first two of the four wheels can be used to steer and the next two to drive the robot. Balancing a four wheeled robot is never an issue. Most everyday cars we use are four wheeled and the example is enough to prove its existence and capabilities.

 

**Although the four wheels can be combined and driven in different ways, two of the most common driving and steering methods used for robots with four wheels are Ackerman steering and differential drive. **

**Disadvantages Of Car Type Drive : The turning mechanism must be accurately controlled. A slight inaccuracy may cause large odometry errors The system is Non – Holonomic hence path planning is extremely difficult as well as inaccurate There are no direct directional actuators**

**![][4]**

#### Skid Steer Drive

  
**A close relative of the differential drive system. It is mostly used in tracked machines e.g. tanks. Also finds application in some four / six wheeled robots**

The left and right wheels are driven independently. Steering is accomplished by actuating each side at a different rate or in a different direction, causing the wheels or tracks to slip, or skid, on the ground.

The wheels typically have no separate steering mechanism and hold a fixed straight alignment on the body of the machine. By turning the left and right wheel pairs at different speeds, the machine turns by skidding, or dragging its fixed-orientation wheels across the ground. The extremely rigid frame and strong wheel bearings prevent the torsional forces caused by this dragging motion from damaging the machine.  
The skid-steering vehicle is turned by generating [differential][5] velocity at the opposite sides of the vehicle. They can be converted to low ground friction by using specially designed wheels such as the [Mecanum wheel][6].  
Skid-steer loaders are capable of zero-radius, "pirouette" turning, which makes them extremely maneuverable and valuable for applications.

**![][7]**

#### Synchronous Drive

**As the name suggests, it uses synchronous rotation of its wheels to achieve motion & turns  
It is made up of a system of motors.   
One set of which drive the wheels and the other set turns the wheels in a synchronous fashion  
The two sets can be directly mechanically coupled as they always move in the same direction with same speed**

  
**![][8]**

#### Pivot Drive

**The most unique type of Locomotion system**

It is composed of a four wheeled chassis and a platform that can be raised or lowered  
The wheels are driven by a motor for translation motion in a straight line

For rotation one motor is needed to lower/raise the platform & another to rotate the chassis around the platform

This system can guarantee perfect straight line motion as well as accurate in – place turns to a desired heading

  
**![][9]**

[1]: https://lh5.googleusercontent.com/I6XsTIozi2Z1vzV6EwT6r2JdgazA9Oszim48Z9uPRkaDPihmsyi06PzG1FpLKCA2EO-eKRxQ9GaL0UVl_DdaACxQ9UuEkEoncB9C90hwTZ-2jpWcrV0
[2]: https://lh4.googleusercontent.com/WzKG729AvpAQhqR3p0myhYMYZ67uuhDTZ6Mom21ZOPVY6830deMXuFxHGu72AfGgcGed0rgtERzSiBXzP62CLeGGvFzpcsJ-PPc33-Rog68kYJ5HCE4
[3]: https://lh6.googleusercontent.com/XRwXaDeqP6XkimiRmr2TAzdm4IIyjKEzwVGXVoiv8XybKmEIJMRWweOAKQewPi10f_sOlhq4jURWoqntO7-D4mWW9cuubuSiEEw5AYRqD4sWbm7zmmE
[4]: https://lh3.googleusercontent.com/DLyj8TLKVeoNgAlW_EcrxV6pni1CwiaZzey36Q8Cv6zQq-w0gnQhgXo8MhlNVcoVPHC-rVrCWjTqDC_Uilz4Pi9EtPOFJxso8aE9btUYiffhWqi7svg
[5]: http://en.wikipedia.org/wiki/Differential_(mechanical_device)
[6]: http://en.wikipedia.org/wiki/Mecanum_wheel
[7]: https://lh6.googleusercontent.com/if3ZaDXkVYq0MlQHWcKpHj_S_pc3bj2rjExqiPk3-znJWTiKH3CjymwBhlnBi4GyYXgVLbXS9LlEJJ99zCye0-0W6xSBIltrG3rACa8HxP2wd1n13Rc
[8]: https://lh5.googleusercontent.com/fCYMiLMTGAFrbzepNiPQ-QBT9Hboch-lziiJaVUW9meToQxq78uL-OaUG0ppnhA0xEg73wo0hUKOHbRoJj_ccTMd5g0Nz2LFFFN1eSqTKHiBkps7Ny0
[9]: https://lh5.googleusercontent.com/RqNzLpK2a-mEnSrsoKTDZo1L9YN6WikDaKvEi5aXVbiBGiXgEGyPX5xoLrVDBfMxVw2j8c4EQvPmhVG6ggWLrk2r20I8TMau-mMHbdBPTUGZLHlex-o
