---
layout: post
title: "Digital Output"
categories:
  - arduino
redirect_from: "/tutorials/category/arduino/digout/"
---

#### Circuitry

Now we'll dive into some hardware and code for a primer on the working of the Arduino. Get a** breadboard, LED, few resistors, and wires** ready. Unplug the Arduino and connect everything as shown:

**![][1]**

Make sure the LED is connected correctly with the** longer leg (positive terminal) to Digital Pin 10**, and the **shorter leg to Ground**. Use elementary Ohm's Law and the rating of the LED to calculate the rating of resistor to use. A 100 ohms one should suffice here though. 

#### Code

Now plug in the Arduino and enter the code:

Click Verify, then Upload if no errors are found. The **breadboard LED should now flash on and off every second**.

**![][2]**

 

#### Understanding the Code

* // Project 1 - LED Blinky This is a **comment**. Comments start with a double slash, and are ignored by the compiler. They are essential to understand how the code works, especially if you are distributing your code
* int ledPin = 10; This line defines a **variable **called ledPin of type integer. A variable is a place to store data. The data can be of type integer (int), floating point (float), character (char) etc.
* void setup() This is a **function**.  A function is a bunch of code assembled into one convenient block. Variables are passed to the function with parentheses. The function code lies within curly braces. An Arduino sketch **must have a setup() and a loop() function**, otherwise it will not work. The** setup() function runs once at the start of the program** and issues instructions like setting pin modes to input or output (e.g Pin 10 with the LED is set as output), setting serial baud rates etc.
* void loop()The** loop() function is the main program function and runs continuously as long as the Arduino is on** (after the setup() function though). Every statement within the loop()function (within the curly braces) is carried out, one by one, step by step, until the bottom of the function is reached, then the loop starts again at the top of the function.
* digitalWrite(ledPin, HIGH); digitalWrite** writes a HIGH or a LOW value to the pin within the statement** (in this case ledPin, which is Digital Pin 10). When you set a pin to HIGH, you are sending out 5 volts to that pin. When you set it to LOW, the pin becomes 0 volts, or ground. This statement, therefore, sends out 5v to pin 10 and** turns the LED on**.
* delay(1000); **tells the Arduino to wait for 1000 milliseconds**, i.e. 1 second
* digitalWrite(ledPin, LOW); **turns off the LED**, after which it waits for another one second before repeating the process.

 

Try changing the delay time interval to better understand the working.

 

#### S.O.S. Morse Code Signaller

We'll make some alterations to our previous code (the hardware remains the same) to make the LED flash SOS in Morse Code. (Three short flashes, then three long flashes, then three short flashes again)

In this example, we have** defined a function called flash(), w**hich takes arguments such as LED pin, time for which the LED should stay on, and the no. of times it should flash, and then executes the corresponding code. It helps to make our program modular, compact and flexible.

[1]: https://lh3.googleusercontent.com/0yIdsO9e-TNflxjeDdpE0euuWyOJbQomTkE1qvQUeH0vrlq9pjAnHZwQehwimIghHsWPxiC6CW9xX9adagYY3JLrMbW8_CYh3hQ9FmidbxRyKWrA6GQ
[2]: https://lh6.googleusercontent.com/219RGs5leG3skh5O3TwY29xBjb1Ajc0dlu9r7E_1gqVVsUfEGPDqgTPVjeKfn5YpwxIvlOQ_G0cSpwwYP9q3LPhCdJNZjzPek-6PCPVsyxfkjZK6YwI
