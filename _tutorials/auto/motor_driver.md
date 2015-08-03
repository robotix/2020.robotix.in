---
layout: post
title: "Motor Driver IC"
categories:
  - auto
redirect_from: "/tutorials/category/auto/motor_driver/"
---

#### What Is Motor Driver IC?

A motor driver IC is an integrated circuit chip which is usually used to control motors in autonomous robots. Motor driver ICs act as an interface between microprocessors in robots and the motors in the robot. The most commonly used motor driver IC's are from the L293 series such as L293D, L293NE, etc. These ICs are designed to control 2 DC motors simultaneously. L293D consist of two H-bridge. H-bridge is the simplest circuit for controlling a low current rated motor. For this tutorial we will be referring the motor driver IC as L293D only. L293D has 16 pins, they are comprised as follows:  
Ground Pins - 4  
Input Pins - 4  
Output Pins - 4  
Enable pins -  2  
Voltage Pins - 2  
The workings of the individual pins are explained in detail, later in the tutorial.

#### Why We Need Motor Driver IC?

Motor Driver ICs are primarily used in autonomous robotics only. Also most microprocessors operate at low voltages and require a small amount of current to operate while  the motors require a relatively higher voltages and current . Thus current cannot be supplied to the motors from the microprocessor. This is the primary need for the  motor driver IC.

#### How Motor Driver Operates?

The L293D IC receives signals from the microprocessor and transmits the relative signal to the motors. It has two voltage pins, one of which is used to draw current for the working of the L293D and the other is used to apply voltage to the motors. The L293D switches it output signal according to the input received from the microprocessor.  
For Example: If the microprocessor sends a 1(digital high) to the Input Pin of L293D, then the L293D transmits a 1(digital high) to the motor from its Output Pin. An important thing to note is that the L293D simply transmits the signal it receives. It does not change the signal in any case.

#### L293D And Its Working

The L293D is a 16 pin IC, with eight pins, on each side, dedicated to the controlling of a motor. There are 2 INPUT pins, 2 OUTPUT pins and 1 ENABLE pin for each motor. L293D consist of two H-bridge. H-bridge is the simplest circuit for controlling a low current rated motor.  
The Theory for working of a H-bridge is given below.

#### Working Of A H-bridge

H-bridge is given this name because it can be modelled as four switches on the corners of 'H'. The basic diagram of H-bridge is given below :

![][1]

In the given diagram, the arrow on the left points to the higher potential side of the input voltage of the circuit. Now if the switches **S1** & **S4** are kept in a **closed** position while the switches **S2** & **S3** are kept in a **open** position meaning that the circuit gets shorted across the switches **S1** & **S4**.  This creates a path for the current to flow, starting from the V input to switch **S1** to the **motor**, then to switch **S4** and then the exiting from the circuit. This flow of the current would make the motor turn in one direction. The direction of motion of the motor can be clockwise or anti-clockwise, this is because the rotation of the motor depends upon the connection of the terminals of the motor with the switches.  
For simplicity, lets assume that in this condition the motor rotates in a clockwise direction.  
Now, when **S3** and **S2** are **closed** then and **S1** and **S4** are kept **open** then the current flows from the other direction and the motor will now definitely rotates in counter-clockwise direction  
When **S1** and **S3** are closed and **S2** and **S4** are **open** then the **'STALL'** condition will occur(The motor will break).  
**Stall Condition:**  
When the motor is applied positive voltage on both sides then the voltage from both the sides brings the motor shaft to a halt  
**L293D Pin Diagram :**

![][2]  
In the above diagram we can see that,

| ----- |
|  **Pin No.** |  **Pin Characteristics** |
|  1 |  Enable 1-2, when this is HIGH the left part of the IC will work and when it is low the left part won't work. So, this is the Master Control pin for the left part of IC |
|  2 |  INPUT 1, when this pin is HIGH the current will flow though output 1 |
|  3 |  OUTPUT 1, this pin should be connected to one of the terminal of motor |
|  4,5 |  GND, ground pins |
|  6 |  OUTPUT 2, this pin should be connected to one of the terminal of motor |
|  7 |  INPUT 2, when this pin is HIGH the current will flow though output 2 |
|  8 |  VC, this is the voltage which will be supplied to the motor. So, if you are driving 12 V DC motors then make sure that this pin is supplied with 12 V |
|  16 |  VSS, this is the power source to the IC. So, this pin should be supplied with 5 V |
|  15 |  INPUT 4, when this pin is HIGH the current will flow though output 4 |
|  14 |  OUTPUT 4, this pin should be connected to one of the terminal of motor |
|  13,12 |  GND, ground pins |
|  11 |  OUTPUT 3, this pin should be connected to one of the terminal of motor |
|  10 |  INPUT 3, when this pin is HIGH the current will flow though output 3 |
|  9 |  Enable 3-4, when this is HIGH the right part of the IC will work and when it is low the right part won't work. So, this is the Master Control pin for the right part of IC |

 

#### Soldering On A PCB

Given below is the circuit diagram for how the IC needs to be soldered on a PCB with the connectors.

![][3]  
**From a six pin relimate INPUT 2, INPUT 1, ENABLE 1-2,ENABLE 3-4,INPUT 3 and INPUT 4 are given.  
The inputs to the DC motors are to be given through a two pin relimates whose connectors is shown in the left and right side of the figure.**

#### Working Mechanism

Now depending upon the values of the Input and Enable the motors will rotate in either clockwise or anticlockwise direction with full speed (when Enable is HIGH) or with less speed (when Enable is provided with PWM).  
Let us assume for Left Motor when Enable is HIGH and Input 1 and Input 2 are HIGH and LOW respectively then the motor will move in clockwise direction.  
So the behaviour of the motor depending on the input conditions will be as follows :

| ----- |
|  **INPUT 1** |  **INPUT 2** |  **ENABLE 1,2** |  **Result** |
|  0 |  0 |  1 |  Stop |
|  0 |  1 |  1 |  Anti-clockwise rotation |
|  1 |  0 |  1 |  Clockwise rotation |
|  1 |  1 |  1 |  Stop |
|  0 |  1 |  50% duty cycle |  Anti-clockwise rotation with half speed |
|  1 |  0 |  50% duty cycle |  Clockwise rotation with half speed |

**Why 4 grounds in the IC?**  
The motor driver IC deals with heavy currents. Due to so much current flow the IC gets heated. So, we need a heat sink to reduce the heating. Therefore, there are 4 ground pins. When we solder the pins on PCB, we get a huge metalllic area between the grounds where the heat can be released.

**Why Capacitors?**  
The DC motor is an inductive load. So, it develops a back EMF when supplied by a voltage. There can be fluctuations of voltage while using the motor say when suddenly we take a reverse while the motor was moving in some direction. At this point the fluctuation in voltage is quite high and this can damage the IC. Thus, we use four capacitors that help to dampen the extreme variation in current.

#### CODE (AVR)

[1]: https://lh6.googleusercontent.com/GiO1o6Mv4qqVOVosrmJTdg8NnaRsxmRrhR6eT_-9nv3esvVJodJNTgEwaCFtGiHdpyu1RhATjZzQNvNKAUQG1xpW43P_g4jt5ST8v-zypdQg8xA0CdNoFQd_SA
[2]: https://lh3.googleusercontent.com/6MkxVv0tiN7vY9LF0MOhRObXk1STScK_CRagpHCBJ7MxNEcUxIi8YaoL3eNmW_F2L6HFPn38ShAks5dOVlHFwwq559IuDKU59nPJbvQl1XxhPY2gUqmy6KQ4
[3]: https://lh3.googleusercontent.com/alsRnnDXKhhTBAg_UMwuMvji0M07RY0BI2LuU_bz_5h9EngF774d-a6ZSGbc4tPUw4rcdF3Vlz5F9XFY5iTpSEZ7yqIH6w-kuRX2--BycpgS7NRf7WW_jXNWxg
