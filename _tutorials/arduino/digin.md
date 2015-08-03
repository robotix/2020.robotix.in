---
layout: post
title: "Digital Input"
categories:
  - arduino
redirect_from: "/tutorials/category/arduino/digin/"
---

#### Circuitry

We will now understand the basic working of taking input through pins with the help of '**push buttons**'. Get hold of one (these are pretty cheap) and connect it like the following circuit.

**![][1]**

Note the use of a **pull-down resistor** (150 ohms) in conjunction with the push button. To understand how pull-down and pull-up resistors work, refer to (this)[2].

#### Code

Now enter the code:

Plug in the Arduino, click Verify, then Upload if no errors are found. The **breadboard LED should be turned off by default and should glow as long as the button is depressed.**

#### Understanding the Code

* Most of the code should be easy to figure out once you have understood the previous examples.
* Note the pins from which output has to be gathered are set to the INPUT pinMode in the setup block.
* digitalRead(pin) This** function returns a boolean value - HIGH if the pin is high and LOW if the pin is low**.

#### Internal Pull-Up Resistors

Conveniently, the **Arduino contains pull-up resistors** that are connected to the pins (the analog pins have pull-up resistors also). These have a **value of 20K ohms and need to be activated within software** to use them. To activate an internal pull-up resistor on a pin, you first need to change the pinMode of the pin to an INPUT and then write a HIGH to that pin using a digitalWrite command. Make sure that your button is connected across the pin and the ground in this case:

```c
pinMode(pin, INPUT);
digitalWrite(pin, HIGH);
```

Note that now pressing the button will cause the state variable to read LOW and otherwise HIGH by default. The wire connecting the push button to +5V is no longer needed. The circuit should be like this:

**![][3]**

[1]: https://lh3.googleusercontent.com/BpMjqw6REklgLwfPRLY729Z_cPhcCTBpHyOH4Wm5VqokjEG3eohQklkZaaMq1h3ahil4vIZkK9KloWs9a2hZUfxEOtp8Vjvkg4w9U8j7BkyhT5bRn1U
[2]: http://francisshanahan.com/index.php/2009/what-are-pull-up-and-pull-down-resistors/
[3]: https://lh6.googleusercontent.com/8g5rr0qgEXcj8x2qIuVv-xf3XCaHX0oXHu5fghIGV-ShWzrkeEtS_viDaGakeRZ4AwRdARiTDOJAbGXF-xE96VUVBX5XXeNzZ6iQsnzM31fN2Y6N3BA
