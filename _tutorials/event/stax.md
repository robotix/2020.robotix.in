---
layout: post
title: "Stax Tutorial"
categories:
 - event
image: img/tutorial/event/stax/image_7.png
---
#### Problem Statement

To build a robot which can rearrange blocks of different colours from a stack in a pattern by identifying the colours simultaneously moving across the stacks using line following.

#### USP

* Autonomous Traversal (Line Following)

* Colour Identification

* Sorting Algorithm

#### Line Following

##### 1.IR LED Pair
**Working**- IR sensor or an infrared sensor consists of an IR LED coupled with a photodiode. This pair is generally called an IR pair or photocoupler. An infrared sensor emits infrared radiations which are detected by the photodiode. Resistance of photodiode changes according to the amount of IR radiation falling on it, hence changing the voltage drop against it. Further, by using the voltage comparator (like LM358) we can sense the voltage change and generate the output accordingly.

![](/img/tutorial/event/stax/image_2.jpg){:.img-responsive}

**Usage** - To follow a line, we can use the difference in reflectivity of the line and surface.

![](/img/tutorial/event/stax/image_6.png){:.img-responsive}

**Pseudo Code:**

{% highlight cpp %}
while(all IR pairs give low value)
{
	if (IR pair gives high value)

		{

			turn in the direction to stop receiving high value

		}

}
{% endhighlight %}

##### 2.IR Sensor Array

For better accuracy we can use multiple IR LED pairs in an IR sensor array.

![](/img/tutorial/event/stax/image_3.jpg){:.img-responsive}

![](/img/tutorial/event/stax/image_4.jpg){:.img-responsive}


#### Colour Detection

Refer to the [colour detection tutorial]({{ site.baseurl }}/tutorial/auto/Color_Detection/).

#### Sorting Algorithm

Sample case of a possible sorting algorithm is given below.

![](/img/tutorial/event/stax/image_5.png){:.img-responsive}
