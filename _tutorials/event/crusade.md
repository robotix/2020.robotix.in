---
layout: post
title: "Crusade Tutorial"
categories:
 - event
---

#### Crusade

#### Problem Statement:

To build an image processing robot that is capable of traversing in a lane while detecting glowing LEDs on its way and deciding its path according to the frequencies of the blinking LEDs.

#### Tools

* Soldering Iron

* Laptop

* Visual Studio / MATLAB / Any IDE with an Image Processing Library

* AVR programming software / Arduino IDE

* Onboard Camera

#### Materials

* 2 Wheels

* 1 Castor Wheel

* Metal Chassis

* 2 DC motors

* 1 Development Board

* 1 Microcontroller (ATmega 16/32/328)

* 1 Programmer (ISP/Arduino)

* Motor Driver (L293D)

* 1 LED

* Relimates

We’ll split the Problem Statement into Modules.In this tutorial, we’ll step by step discuss each module. The first thing to do is to make a mobile robot capable of moving according to instructions received from the laptop.

#### PART 1 - A REMOTE CONTROLLED ROBOT:

##### Locomotion

The robot can be made to move by using a differential drive as the base. With independent motors for the left and right sides of the base, differential drives allow the robot to move in all directions and turn as well. How the motors will rotate will be determined by the voltage supplied to the motor by the motor driver circuit, which in turn will depend on the instructions sent to the motor driver by the micro controllers. For more details on differential drives, please check [Differential drive.](../../mechanical/drivemechtut/)

![](/img/tutorial/event/crusade/ctut1.png){:.img-responsive}

##### Microcontroller

Conceived to be the brain of the robot, the microcontroller is the device that allows us to control the robot and make it autonomous. By pre-programming it, we can make it give different outputs based on different inputs and instructions received, and thereby the robot acts accordingly. For a more elaborate understanding of the working of an AVR microcontroller, please visit [AVR tutorials.](../../avr/avrprog) Essentially you only need to program the microcontroller on your robot, to move in a particular direction, based on the character received by it from the laptop.

![](/img/tutorial/event/crusade/ctut2.png){:.img-responsive}

The code to be burned on arduino is as follows:
```c
#define L_MOTOR_POSITIVE 9
#define L_MOTOR_NEGATIVE 10
#define L_MOTOR_ENABLE 3
#define R_MOTOR_POSITIVE 6
#define R_MOTOR_NEGATIVE 11
#define R_MOTOR_ENABLE 5
#define LED_PIN 13
#define MAX_SPEED_R 240
#define MAX_SPEED_L 180

/*
 * Movements:
 *     W := forward
 *     S := stop
 *     D := right
 *     A := left
 *     R := extreme right
 *     L := extreme left
 *     X := reverse
 */

void setup() {
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(LED_PIN, OUTPUT);
  Serial.begin(9600);
}

int incomingByte = Serial.read();

void loop() {
  if (Serial.available() > 0) {
    incomingByte = Serial.read();

    Serial.print("I received: ");
    Serial.println(incomingByte);
    if (incomingByte == 'A') {
      digitalWrite(L_MOTOR_POSITIVE, LOW);
      digitalWrite(L_MOTOR_NEGATIVE, LOW);

      digitalWrite(R_MOTOR_POSITIVE, HIGH);
      digitalWrite(R_MOTOR_NEGATIVE, LOW);

      analogWrite(L_MOTOR_ENABLE, MAX_SPEED_L);
      analogWrite(R_MOTOR_ENABLE, MAX_SPEED_R);
    }
    else if (incomingByte == 'D') {
      digitalWrite(L_MOTOR_POSITIVE, HIGH);
      digitalWrite(L_MOTOR_NEGATIVE, LOW);

      digitalWrite(R_MOTOR_POSITIVE, LOW);
      digitalWrite(R_MOTOR_NEGATIVE, LOW);

      analogWrite(L_MOTOR_ENABLE, MAX_SPEED_L);
      analogWrite(R_MOTOR_ENABLE, MAX_SPEED_R);
    }
    else if (incomingByte == 'W') {
      digitalWrite(L_MOTOR_POSITIVE, HIGH);
      digitalWrite(L_MOTOR_NEGATIVE, LOW);

      digitalWrite(R_MOTOR_POSITIVE, HIGH);
      digitalWrite(R_MOTOR_NEGATIVE, LOW);

      analogWrite(L_MOTOR_ENABLE, MAX_SPEED_L);
      analogWrite(R_MOTOR_ENABLE, MAX_SPEED_R);
    
     
      else if (incomingByte == 'B') {
      digitalWrite(R_MOTOR_POSITIVE, LOW);
      digitalWrite(R_MOTOR_NEGATIVE, LOW);

      digitalWrite(L_MOTOR_POSITIVE, LOW);
      digitalWrite(L_MOTOR_POSITIVE, LOW);

      digitalWrite(13, HIGH);
      delay(1000);
      digitalWrite(13, LOW);
    }
  }
}
```

#### Part 2 : COMPUTER VISION

Before proceeding with this module, we would request you to go through the set of general [tutorials](../../) for computer vision, for both MATLAB and OpenCV, also found on our website. It is quite extensive, and we will assume that a working knowledge, as put forward there, is in the grasp of the reader of this tutorial.
Note that the video feed will contain some noise. Therefore you will not have a perfect image, and hence detection may become really difficult or you might get wrong predictions. Therefore it is advised to use filters to smoothen your image.

Our main objective is to make the bot move as close to the centre as possible.

##### Lane Traversal

###### Binary Image Conversion:

The lane and the walls need to be separated first. 
This is done by thresholding i.e. setting appropriate R, G and B values in the video feed. This can also be achieved by converting the image to grayscale and then applying a threshold. One can use any method based on which gives better results.

###### Edge Detection:

After getting the binary image we need to find the edges i.e. the boundary between the walls and the road. Apply the [Canny](docs.opencv.org/modules/imgproc/doc/feature_detection.html?highlight=canny#canny) function for this.

###### Probabilistic Hough Transform:

Now comes the main part : extracting out the lines i.e. the sides of the lane from the edge points obtained through canny.This can easily be done using the opencv function [HoughlinesP](https://docs.opencv.org/2.4/modules/imgproc/doc/feature_detection.html?highlight=houghlinesp#houghlinesp). Apply this function on the Canny image to get the sides of the lane.

The detailed procedure is given below :

1. Get one line representation for the left, right and front lines based on their slopes as you will get many lines for the same side of the road through hough transform.Let the number of lines visible to the bot after this be b.

2. Now you need to apply several conditions based on the value of b in order to find out the orientation of the bot on the lane.

3. Decide the approaching right or left turn when all the three lines are in the bot’s field of view i.e. when  b=3.If the left side is longer than the right side it will be a right turn else if the right side is longer than the left side it will be a left turn.

4. We will be using two extra lines to find out the orientation of our bot : the middle column and the middle row line.

5. b=3:

   It means the bot can see the left,right and the front line.We find the midpoint of the points of intersection of the left and the right sides with the mid row line.This point(say M) shows the deviation of the bot from the central position of the lane.We can find the angle through which the bot needs to turn by finding the angle(say A) between the mid column line and the line passing through the point M and the bottom most point of the mid column line.The bot needs to turn by this angle to stay in the centre of the lane.You can give a threshold to the angle obtained above which the bot will make a turn.

   b=2:
   It means that the bot is able to see the front line and one of the left or right sides.This situation arises when the bot is closer to one of the walls. The way of approach will almost be the same here as in CASE 1 with an exception that the point M will be calculated in a different way.It will be the midpoint of the point of intersections of (a) either the left or the right side(whichever is visible to the bot depending upon its orientation) and (b)the boundary most column line(i.e. rightmost column line if left side is visible and leftmost column line if the right side is visible),with the mid row line.

   b=1:
   This situation might arise if the bot is seeing only the left side,only the right side or only the front line.Based on the slopes of the line you can deduce which of the three cases is valid here.If it is the left or the right side you can do the same thing you did for b=2 case.If it is the front line(slope~0) it means that the bot has reached the turning point.Now we will have to decide whether we need to make a right turn or a left turn.This can be found out from our initial deduction of a left or a right lane(see point 3).By utilising this fact you can decide whether the bot needs to take a right or a left turn.For ex : Say when b=3 you had concluded that it is a right turn.Now when the turning point is reached you already know that it’s a right turn.So the point M is kept as the point of intersection of the rightmost column line and the middle row line.Then angle A is found out as usual.


##### Led Detection

###### Colour Detection:

The leds can be segmented out from the video feed based on its colour which will be provided at the time of run.The bot needs to find out when the led disappears from its field of view and accordingly stop to blink its own led after a certain time.

##### Locomotion of the Robot

Now that we know the angle by which the bot needs to turn, we need to send commands to the robot so that it turns in the particular direction.