---
layout: post
title: "Stax Tutorial"
categories:
 - event
---

#### Problem Statement

To build a robot capable of arranging different coloured blocks from a stack, in a given order where the order of the colours is identified by moving across the stacks using autonomous line following.

![](/img/tutorial/event/stax/image_0.png){:.img-responsive}

![](/img/tutorial/event/stax/image_1.png){:.img-responsive}

#### USP

Line following

Colour Detection

Sorting Algorithm

#### Materials Required

| Materials | Quantity |
--------------------------------------- | ------ 
|Arduino Uno                            | 1 |
|Motor Driver IC L293D                  | 2 |
|Chassis with gripper                   | 1 |
|Color sensor module TCS3200            | 1 |
|Pair of /IR Sensor Array               | 1 |
|DC Motors                              | 2 |
|Wheels                                 | 2 |
|Castor Wheel                           | 1 |
|Jumper wires                           | As required |
|Bread Board                            | 1|
|Power supply for Arduino-5V            | 1|
|Power supply for Motor-as specified    | 1|

#### Line Following

##### 1.IR LED Pair
**Working**- IR sensor or an Infrared sensor consist an IR LED coupled with a Photodiode. This pair is generally called an IR pair or Photocoupler. It works on the principle that an infrared sensor emits Infrared radiations and the Photodiode senses the same. Photodiode resistance changes according to the amount of IR radiation falling on it, hence changing the voltage drop against it. Further, by using the voltage comparator (like LM358) we can sense the voltage change and generate the output accordingly.

![](/img/tutorial/event/stax/image_2.jpg){:.img-responsive}

**Usage** - To follow a line, we can use the difference in reflectivity of the line and surface.

**Pseudo Code:**

{% highlight cpp %}
while(all ir pairs don’t give high value)
{
	if (IR pair gives high value)

		{

			turn in the direction to stop receiving high value

		}

}	
{% endhighlight %}

##### 2.IR Sensor Array
![](/img/tutorial/event/stax/image_3.jpg){:.img-responsive}

![](/img/tutorial/event/stax/image_4.jpg){:.img-responsive}

For better accuracy we can use multiple IR LED pair in an IR sensor array.

**Colour Detection**

Refer to this [link](https://www.robotix.in/tutorial/auto/Color_Detection/).

**Sorting Algorithm**

![](/img/tutorial/event/stax/image_5.png){:.img-responsive}

