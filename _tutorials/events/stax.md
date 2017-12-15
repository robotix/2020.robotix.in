---
layout: post
title: "Stax Tutorial"
categories:
 - events
---

#### Problem Statement

To build a bot which rearranges blocks of different colours from a stack in a pattern by identifying the colours while moving across the stacks using line following.

![](/img/tutorial/events/stax/image_0.png){:.img-responsive}

![](/img/tutorial/events/stax/image_1.png){:.img-responsive}

#### USP

Line following

Colour Detection

Sorting Algorithm

#### Materials Required

<table>
  <tr>
    <td>Materials</td>
    <td>Quantity</td>
  </tr>
  <tr>
    <td>Arduino Uno</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Motor Driver IC L293D</td>
    <td>2</td>
  </tr>
  <tr>
    <td>Chassis with gripper</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Color sensor module TCS3200</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Pair of /IR Sensor Array</td>
    <td>1</td>
  </tr>
  <tr>
    <td>DC Motors</td>
    <td>2</td>
  </tr>
  <tr>
    <td>Wheels</td>
    <td>2</td>
  </tr>
  <tr>
    <td>Castor Wheel</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Jumper wires</td>
    <td>As required</td>
  </tr>
  <tr>
    <td>Bread Board</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Power supply for Arduino-5V</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Power supply for Motor-as specified</td>
    <td>1</td>
  </tr>
</table>


#### Line Following

##### 1.IR LED Pair
Working- IR sensor basically consist an IR LED and a Photodiode, this pair is generally called IR pair or Photo coupler. IR sensor work on the principal in which IR LED emits IR radiation and Photodiode sense that IR radiation. Photodiode resistance changes according to the amount of IR radiation falling on it, hence the voltage drop across it also changes and by using the voltage comparator (like LM358) we can sense the voltage change and generate the output accordingly.![](/img/tutorial/events/stax/image_2.jpg){:.img-responsive}
**Usage** - To follow a line, we can use the difference in reflectivity of the line and surface.
**Pseudo Code:**
{% highlight cpp %}
while(all ir pairs don’t give high value)
{
	If (ir pair gives high value)

		{

			turn in the direction to stop receiving high value

		}

}
{% endhighlight %}	

##### 2.IR Sensor Array
![](/img/tutorial/events/stax/image_3.jpg){:.img-responsive}![](/img/tutorial/events/stax/image_4.jpg){:.img-responsive}

For better accuracy we can use multiple IR LED pair in an IR sensor array.

**Colour Detection**
Refer to this [link](https://www.robotix.in/tutorial/auto/Color_Detection/){:.img-responsive}.

**Sorting Algorithm**

![](/img/tutorial/events/stax/image_5.png){:.img-responsive}
