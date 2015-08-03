---
layout: post
title: "Servo"
categories:
  - avr
redirect_from: "/tutorials/category/avr/servo/"
---

#### Basics and Parts

In this tutorial we will be looking into how a servo motor works and how to control it.

  
Servos are used to convert electrical signals into a controlled motion of the motor shaft. It has a wide variety of applications and is easily available. Some places where they are found are in RC toys such as in RC cars for steering and in RC planes to adjust ailerons. The reason they are widely used is that they can be easily controlled by providing them with a rectangular wave signal (or PWM). There are two kinds of servos, digital and analog. Digital servos are used for higher precision purposes. In this tutorial we will be discussing only analog servos.

  
**Control Circuitry:**  
The control circuit is what determines how much the motor has to rotate. It reads the input PWM and converts it into the respective rotation of the shaft.

  
**Feedback Potentiometer:**  
This potentiometer is connected to the shaft of the motor via dears. It has a feedback to the control circuit. So when it reaches the desired position, the control circuit reads that the potentiometer has reached a specific value of resistance and is able to stop motion at that position.  
 

**Motor:**

The motor that is used is usually a DC motor and the torque is dependant on the gear mechanism.

**![][1]![][2]**  
Figure 1:Servo and its parts  
Note: A servo will not rotate by just providing a 5v power supply.

**Working:**  
Servos have a range between which the shaft can rotate. For most servos it is an angle of 180 degrees. (This rotation is restricted by a physical stop within the gear system inside the servo)  
Let us look a little deeper into the working of the servo.  
A servo has three wires to it. The middle wire is always the Vcc supply and the brown or black wire is the ground. Should there be any changes in the colors, the details will be mentioned in the datasheet of the servo. The other wire is for passing the PWM signal to the servo. The servo has a fixed position corresponding to each PWM.  
The control circuit converts the signal to a reference voltage. Then the control circuit checks the feedback from the potentiometer to see the value of resistance that it is at. It then compares the reference voltage with the voltage across the resistor. If the voltage is higher it rotates the shaft of the motor in one direction and if it is lower it rotates it in the other direction. The motor is rotated until the reference voltage and the voltage across the potentiometer become equal.  
If the servo does not move on providing a signal, one of the reasons could be that the value of the reference voltage and that across the potentiometer matches.    
Most servos work for a supply voltage in the range of 4.8v to 6v DC. More specific ranges will vary with manufacturers (Refer to datasheet).  
It was already mentioned that servo signal is a PWM. PWM signal has three parameters: amplitude, pulse width, frequency. The amplitude has to be from 3v to 5v for small servos.(again refer to the datasheet) The frequency of the signal for the analog servo is in the range of 30Hz to 50Hz.  
The position of the servo is determined by the pulse width or sometimes referred to as duty cycle. **![][3]  
Figure 2: PWM parameters**

Consider a servo that needs a frequency of 50Hz. So each period would have to be 20 ms long. Now for most servos, the duty cycle is from 5% to 10% i.e. 1ms to 2ms pulse width. Providing the servo with a pulse width of 1ms brings it to 0 degree from whichever position it is in. 2ms pulse width brings it to 180 degrees and a pulse width of 1.5ms brings it to 90 degrees. In this way we can bring the servo to any intermediate angle by providing the corresponding pulse width.  
**                   ![][4]  
Figure 3: Servo positions**

#### Servo Control

We have seen in the previous tutorial on servos all about the necessary basics of servos. Now let us see how an example of controlling a servo.  
Here we will be using a Hitec HS-311 standard servo. The microprocessor we are using is an Atmega32. For the power supply we are using the USB port of the computer and powering the microprocessor via the ISP.

Let us use the PORTB of the microprocessor for the PWM. As the clock speed of the microprocessor is 16MHz, it has been brought down using a prescaler value of 64.

Now, as the required ON time is 1.5 ms, we need to find the timer count to look for.  
0.0015/(64/16000000)=375  
And for the OFF time of 18.5ms, the count is,  
0.0185/(64/16000000)=4625  
Using these values, let us look at a simple code to generate a PWM of pulse width 1.5ms. (This code can be understood only if you are aware of using timers)

This should bring the shaft of the servo to approximately the middle position of its range of movement. Similarly we can calculate the timer count for any time in the range of the pulse width limits to get the servo at the corresponding position.

Apart from using a microcontroller to control a servo, we can also use a dedicated timer circuit to provide the signal. One of the most common and popular of these circuits are the 555 timer circuit. There is a different tutorial dedicated to its working.

Now let us look at some points worth noting about servos:

1\. The servo shaft can be rotated by hand. Once you feel the shaft is not rotating by applying nominal force, it means it has reached the limit of its rotation.  
2\. When you provide the signal to the servo you have to make sure that the voltage difference between the signal and the ground is correct. It may sometimes be incorrect when the power source is not the same which provides the signal.  
3\. Some servos may get damaged if you provide a pulse width greater than that specified.  
4\. It is noticed that the position is dependent on the pulse width alone and is not affected if the frequency is changed slightly.

 

[1]: https://lh3.googleusercontent.com/oBloqQBci9wnNjs72zGpsxphAKzlMk-hd0Xf0NheSwBHemvbpTOZXAlQmRSyfHvvndJ-MxQlnTRRnM2rkvzfT4FHLAyJ8Z29WFZYFT6pOSu_Qg23blw
[2]: https://lh4.googleusercontent.com/V5KEkYAxFJLe1dHSbFstVjcWQjdNZgoofokIXdim-BXiTPUmQKYLhe19Lsw8MrroH7hMHZjCCvjdj-oP7xhH5pq0MqN7Y2zxJfnLIOWIZZ4w-MUgJ8w
[3]: https://lh6.googleusercontent.com/AYw9yoJhTigrT5I4pefHQwSe5OlBeBjHxRB8Vb7yLUvkqgEnyDIT3i1FxosPCOh9dfw_p_ydHHDUa0sKZOvk0kKfG7Oztzl0S-H_9-vIGp1W52FUTUM
[4]: https://lh5.googleusercontent.com/vpSMG0u01kWvjk1iG7iE3FBoBccOKcWNOPMg_QC6M-yuyg0sIleExqmRJGcBs17zNxqPQW8T2BpZYEJXn7wzFEq4luh9qrrpPDtUJzvtVodicE-FoAg
