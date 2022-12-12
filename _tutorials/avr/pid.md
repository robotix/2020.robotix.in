---
layout: post
title: "PID Control"
categories:
  - avr
redirect_from: "/tutorials/category/avr/pid/"
---

#### What is PID?

"PID" is an acronym for Proportional Integral Derivative. As the name suggests, these terms describe three basic mathematical functions applied to the error (error = SetVal - SensorVal, where SetVal is the target value and SensorVal is the present input value obtained from the sensor ). Main task of the PID controller is to minimize the error of whatever we are controlling. It takes in input, calculates the deviation from the intended behaviour and accordingly adjusts the output so that deviation from the intended behaviour is minimized and greater accuracy obtained.

#### Why implement PID?

Line following seems to be accurate when carried out at lower speeds. As we start increasing the speed of the robot, it wobbles a lot and is often found getting off track.  
Hence some kind of control on the robot is required that would enable us to make it follow the line efficiently at higher speeds. This is where PID controller shines.

In order to implement line following one can basically start with just three sensors which are so spaced on the robot that-

1. If the centre sensor detects the line the robot steers forward
2. If the left sensor detects the line the robot steers right  
3. If the right sensor detects the line the robot steers left.

This algorithm would make the robot follow the line, however, we would need to compromise with its speed to follow the line efficiently.

We can increase the efficiency of line following by increasing the number of sensors, say 5.

Here the possible combinations represent exact position like-

| ----- |
|  **00100** |  **On the centre of the line** |
|  **00001** |  **To the left of the line** |
|  **10000** |  **To the right of the line** |

There will be other possible combinations such as 00110 and 00011 that can provide us data on how far to the right is the robot from the centre of the line(same follows for left). Further to implement better line following we need to keep track of how long is the robot not centered on the line and how fast does it change its position from the centre.This is exactly what we can achieve using "PID" control.The data obtained from the array of sensors would then be put into utmost use and line following process would be much more smoother, faster and efficient at greater speeds.

PID is all about improving our control on the robot.

The idea behind PID control is that we set a value that we want maintained, either speed of a motor or reading from a sensor. We then take the present readings as input and compare them to the setpoint. From this an error value can be calculated, i.e, (error = setpoint - actual reading). This error value is then used to calculate how much to alter the output by to make the actual reading closer to the setpoint.

#### How to implement PID?

**Terminology:**

The basic terminology that one would require to understand PID are:

* Error - The error is the amount at which a device isn't doing something right. For example, suppose the robot is located at x=5 but it should be at x=7, then the error is 2.
* Proportional (P) - The proportional term is directly proportional to the error at present.
* Integral (I) - The integral term depends on the cumulative error made over a period of time (t).
* Derivative (D) - The derivative term depends rate of change of error.
* Constant (factor)- Each term (P, I, D) will need to be tweaked in the code. Hence,they are included in the code by multiplying with respective constants.
    * P-Factor (Kp) - A constant value used to increase or decrease the impact of Proportional
    * I-Factor (Ki) - A constant value used to increase or decrease the impact of Integral
    * D-Factor (Kd) - A constant value used to increase or decrease the impact of Derivative

**Error measurement:**  In order to measure the error from the set position, i.e. the centre we can use the weighted values method. Suppose we are using a 5 sensor array to take the position input of the robot. The input obtained can be weighted depending on the possible combinations of input. The weight values assigned would be such that the error in position is defined both exactly and relatively.

The full range of weighted values is shown below. We assign a numerical value to each one.

| ----- |
|  Binary Value |  Weighted Value |
|  00001 |  4 |
|  00011 |  3 |
|  00010 |  2 |
|  00110 |  1 |
|  00100 |  0 |
|  01100 |  -1 |
|  01000 |  -2 |
|  11000 |  -3 |
|  10000 |  -4 |
|  00000 |  -5 or 5 (depending on the previous value) |

The range of possible values for the measured position is -5 to 5. We will measure the position of the robot over the line several times a second and use these value to determine Proportional, Integral and Derivative values.

**PID formula:**

So what do we do with the error value to calculate how much the output be altered by? We would need  to simply add the error value to the output to adjust the robot's motion. And this would work, and is known as proportional control (the P in PID). It is often necessary to scale the error value before adding it to the output by using the constant(Kp).  
 

**Proportional:**

Difference = (Target Position) - (Measured Position)  
Proportional = Kp*(Difference)

This approach would work, but it is found that if we want a quick response time, by using a large constant, or  if the error is very large, the output may overshoot from the set value. Hence the change in output may turn out to be unpredictable and oscillating. In order to control this, derivative expression comes to limelight.

**Derivative:**

Derivative provides us the rate of change of error. This would help us know how quickly does the error change from time to time and accordingly we can set the output.

Rate of Change = ((Difference) – (Previous Difference))/time interval  
Derivative= Kd *(Rate of Change)

The time interval can be obtained by using the timer of microcontroller.

The integral improves steady state performance, i.e. when the output is steady how far away is it from the setpoint. By adding together all previous errors it is possible to monitor if there are accumulating errors. For example- if the position is slightly to the right all the time, the error will always be positive so the sum of the errors will get bigger, the inverse is true if position is always to the left. This can be monitored and used to further improve the accuracy of line following.  
 

**Integral:**

Integral = Integral + Difference  
Integral = Ki*(Integral)

Summarizing "PID" control-

| ----- |
|  Term |  Expression |  Effect |
|  Proportional  |  Kp x error |  It reduces a large part of the error based on present time error. |
|  Integral |  error dt |  Reduces the final error in a system. Cumulative of a small error over time would help us further reduce the error. |
|  Derivative |  Kd x derror / dt |  Counteracts the Kp and Ki terms when the output changes quickly. |

Therefore, Control value used to adjust the robot's motion=

(Proportional) + (Integral) + (Derivative)

**Tuning:**

PID implementation would prove to be useless rather more troublesome unless the constant values are tuned depending on the platform the robot is intended to run on. The physical environment in which the robot is being operated vary significantly and cannot be modelled mathematically. It includes ground friction, motor inductance, center of mass, etc. Hence, the constants are just guessed numbers obtained by trial and error. Their best fit value varies from robot to robot and also the circumstance in which it is being run. The aim is to set the constants such that the settling time is minimum and there is no overshoot.

There are some basic guidelines that will help reduce the tuning effort.  
 

* Start with Kp, Ki and Kd equalling 0 and work with Kp first. Try setting Kp to a value of 1 and observe the robot. The goal is to get the robot to follow the line even if it is very wobbly. If the robot overshoots and loses the line, reduce the Kp value. If the robot cannot navigate a turn or seems sluggish, increase the Kp value.
* Once the robot is able to somewhat follow the line, assign a value of 1 to Kd (skip Ki for the moment). Try increasing this value until you see lesser amount of wobbling.
* Once the robot is fairly stable at following the line, assign a value of 0.5 to 1.0 to Ki. If the Ki value is too high, the robot will jerk left and right quickly. If it is too low, you won't see any perceivable difference.  Since Integral is** cumulative, the Ki value has **a significant impact. You may end up adjusting it by .01 increments.
* Once the robot is following the line with good accuracy, you can increase the speed and see if it still is able to follow the line. Speed affects the PID controller and will require retuning as the speed changes**.**

  
**Pseudo Code:**Here is a simple loop that implements the PID control:

start:  
error = (target_position) - (theoretical_position)  
integral = integral + (error*dt)  
derivative = ((error) - (previous_error))/dt  
output = (Kp*error) + (Ki*integral) + (Kd*derivative)  
previous_error = error  
wait (dt)  
goto start

Lastly, PID doesn't guarantee effective results just by simple implementation of a code, it requires constant tweaking based on the circumstances, once correctly tweaked it yields exceptional results. The PID implementation also involves a settling time, hence effective results can be seen only after a certain time from the start of the run of the robot. Also to obtain a fairly accurate output it is not always necessary to implement all the three expressions of PID. If implementing just PI results yields a good result we can skip the derivative part.