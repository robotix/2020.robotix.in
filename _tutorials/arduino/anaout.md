---
layout: post
title: "Analog Output (PWM)"
categories:
  - arduino
redirect_from: "/tutorials/category/arduino/anaout/"
---

#### Circuitry

You are now going try a more advanced method of controlling LEDs. So far, you have simply turned the LED on or off. Would you like to adjust the brightness of an LED? Can you do that with an Arduino? Yes, you can.

The circuit for this example is the same as of our first example:

![][1]{:.img-responsive}

#### Code

Now enter the code:

{% highlight cpp %}
int ledPin = 10;
float sinVal;
int ledVal;

void setup() {
    pinMode(ledPin, OUTPUT);
}

void loop() {
    for (int x=0; x<180; x++) {
        sinVal = (sin(radians(x)));
        ledVal = int(sinVal*255);
        analogWrite(ledPin, ledVal);
        delay(4);
    }
}
{% endhighlight %}

Plug in the Arduino, click Verify, then Upload if no errors are found. The brightness of the breadboard LED should smoothly increase, then smoothly decrease and then repeat.

#### Understanding the Code

* Most of the code should be easy to figure out once you have understood the previous examples.
* The meat of the program is in the for loop. The process inside this loop is carried for every angle ranging from *0°* to *179°*.
* The angle is converted to radians using the in-built `radians(angle°)` function.
* The sine value thus calculated ranges from *0* to *1*.  This is multiplied by *255* to get a value between *0* and *255*. The Arduino's analog output is 8-bit and requires a value between *0 (LOW)* and *255 (HIGH)*.
* The obtained value is then typecasted to an integer in the same line using `int()`
* The `analogWrite(ledPin, ledVal);` statement writes `ledVal` to the specified `ledPin`.

The concept here is that you are creating a sine wave (positive half-cycle of course) and having the brightness of the LED follow the path of that wave. This is what makes the light pulsate instead of just flare to full brightness and fade back down again.

#### Pulse Width Modulation

Six pins *(3,5,6,9,10,11)* on the Arduino UNO board are marked as PWM pins. These pins differ from the remaining digital pins in that they are able to send out a PWM signal.

![][2]{:.img-responsive}

PWM stands for Pulse Width Modulation, which is **a technique for getting analog results from digital means**. On these pins, the Arduino sends out a square wave by switching the pin on and off very fast. The pattern of on/offs can simulate a varying voltage between 0 and 5v. It does this by changing the amount of time that the output remains high (on) versus off (low). The duration of the on time is known as the **pulse width.**

For example, if you were to send the value 0 out to Digital PWM Pin 11 using analogWrite(), the ON period would be zero, or it would have a 0 percent **duty cycle**. If you were to send a value of 64 (25 percent of the maximum of 255) the pin would be ON for 25 percent of the time and OFF for 75 percent of the time. The value of 191 would have a duty cycle of 75 percent; a value of 255 would have a duty cycle of 100 percent.

The pulses run at a speed of approximately *500Hz* or *2 milliseconds* each. So, in your sketch, the LED is being turned on and off very fast. If the Duty Cycle was *50%* (a value of *127*), the LED would pulse on and off at 500Hz and would display at half the maximum brightness. This is basically an illusion that you can use to your advantage by allowing the digital pins to output a simulated analog value to your LEDs.

Note that even though only six of the pins have the PWM function, you **can easily write software to give a PWM output from all of the digital pins if you wish.**

[1]: /img/tutorial/arduino/anaout/blinky.jpg
[2]: /img/tutorial/arduino/anaout/pwm.gif
