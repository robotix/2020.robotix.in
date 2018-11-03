---
layout: post
title: "Nuke Trench Tutorial"
categories:
 - event
---

#### Nuke Trench

#### Problem Statement:

To make a semi-autonomous robot which can traverse manually through a trench/lane while simultaneously reading, interpreting the morse code, processing the signals and removing the nuke bomb from the arena which holds certain metallic and ferromagnetic properties.

#### USP

* Manually navigating in arena using lane/trench  following style robot.

* Reading and interpreting Morse Code.

* Metal detection along with ferro-magnetic properties detection.

#### Component List :

| Components | Quantity |
| --- | --- |
| IR sensor module | 1 |
| Metal detector(without a buzzer) | 1 |
| Solenoid | 1 |
| Servo/robotic gripper | 1 |
| Arduino Uno/nano/micro | 1 |
| L293D motor driver | 1 |
| Chassis | 1 |
| DC motors  | 2 |
| Wheels | 2 |
| Castor Wheel | 1 |
| Jumper Wires | As required |
| Breadboard | 1 |
| 9-12V power supply | 1 |
| Wireless Tx,Rx | 1 Pair |

#### Traversal

##### Wireless

Bluetooth wireless controller can be made using HC-05.

* Set the bluetooth modules up as master and slave using AT commands. These can be done by accessing the AT mode in the module.

* At the transmitter end, we have to send strings viz W,A,S,D along with integer value for the servo.

* Commands sent from the transmitter will be received on the slave module.

* Data from the slave module will be processed by the arduino on the robot.


##### Wired

The wired (WASD) controller can be made using four relays and four buttons. A detailed [tutorial](../../../tutorial/mechanical/control_box/) for a wired controller can be found on our website.

#### Lifting mechanism

##### Gripper

A gripper with two claws can be used to pick and place the blocks after scanning.

![](/img/tutorial/event/nuke_trench/nktut1.png){:.img-responsive}

##### Servo Lifting Mechanism

Attaching an arm (arm length 10cm) to the to a servo horn will fabricate one such lifting mechanism.

![](/img/tutorial/event/nuke_trench/nktut2.png){:.img-responsive}

#### Morse code Scanning

##### IR Led pair

Working- IR sensor or an infrared sensor consists of an IR LED coupled with a photodiode. This pair is generally called an IR pair or photocoupler. An infrared sensor emits infrared radiations which are detected by the photodiode. The resistance of photodiode changes according to the amount of IR radiation falling on it, hence changing the voltage drop against it. Further, by using the voltage comparator (like LM358) we can sense the voltage change and generate the output accordingly.

![](/img/tutorial/event/nuke_trench/nktut3.png){:.img-responsive}

Usage - To detect the thickness of the stripes, we can use the difference in reflectivity of the white stripes and black surface.

* Since the robot will always travel in forward direction and knowing the fact that stripes are oriented orthogonal to the direction of movement, thus duration for which the IR sensor detects the white strip over it can be used to retrieve its length.

![](/img/tutorial/event/nuke_trench/nktut4.png){:.img-responsive}

* Pseudo code

```c
int signal_length[ ];
int a[ ];
signal_length = Read();
for(int i =0; i<4; i++){                                                                                    
    if(signal_length[i]>threshold) a[i] =1;
    else{a[i]=0 }
}

```

#### Physical Properties Scanning

##### Metal Detection

One can use ordinary metal detection sensor. Remove its buzzer(if present) and solder a wire to the positive terminal where the buzzer was previously connected. Feed this wire to the input pin of arduino and apply threshold accordingly to differentiate metals. (Refer **Arduino IDE->Examples->Basic->analogReadSerial**)

![](/img/tutorial/event/nuke_trench/nktut5.png){:.img-responsive}

##### Detection of the presence of a block

Use a sensor which can sense the presence of the block before the robot. 
The output from this sensor shall be fed to the Arduino. 
The most basic sensor which can be used to solve this issue is an IR sensor. Further sonar, laser beam breaking etc can be used.
Using such a sensor will assist the robot to detect the block and then scan it.

##### To detect ferromagnetic material
Fabricate a sensor using a solenoid. 
The solenoid will tend to or may stick to the block, thus identifying this motion electronically will yield a ferromagnetic metal detector. 
The output from this sensor shall be fed to Arduino. 
This setup will have a very close resemblance with typical electric bells or solenoid switches.

![](/img/tutorial/event/nuke_trench/nktut6.png){:.img-responsive}

##### Pseudo code
```c
if(block_present == True){
    if(metal == Ture){ // metal is boolean value for metal 
    return “metal” 
}
else if(metal == True && ferro){ // ferro is the boolean for metal
    return “non metal”
} 
if(metal == False){
    return “non metal”
} }
```
![](/img/tutorial/event/nuke_trench/nktut7.png){:.img-responsive}
