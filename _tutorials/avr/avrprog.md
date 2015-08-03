---
layout: post
title: "AVR Programming"
categories:
  - avr
redirect_from: "/tutorials/category/avr/avrprog/"
---

#### Introduction

Now that we are done with basic working of uC. Let us learn how to code in uC. For this purpose, you'll need software where you'll code for your uC.

In this tutorial, we'll be working with Atmel Studio 6.0. This software's available [here][1]. We'll be working on a robokits development board and to burn the program in uC, you'll require USB programmer software which you'll get [here][2].

  
So this is what we'll do step by step:

![][3]

Before we start with the software, let's start with few important instructions we'll be using for programming uC.

 

 

#### Bit wise operators

Before moving to coding part, learning a bit of bitwise operators is required

List of Bitwise operators

 

![][4]

 

1. AND( & ) :

A bitwise AND takes two binary representations of equal length and performs the logical AND operation on each pair of corresponding bits.

LOGICAL AND :

  

| ----- |
|

A

 |

B

 |

A & B

 |
|

0

 |

0

 |

0

 |
|

0

 |

1

 |

0

 |
|

1

 |

0

 |

0

 |
|

1

 |

1

 |

1

 |

So, a LOGICAL AND is similar to Multiplication. If one is true(1) and other is false(0) the result will be always false(0). The only condition when the result will be true(1) is when both are true(1).

When we do the AND operation between two 8-bit numbers it goes like this,

lets take two random 8-bit numbers A and B,

A    =    0b00101110

B    =    0b10100011

A&B    =    0b00100010

 

 

2. OR( | ) :

A bitwise OR takes two binary representations of equal length and performs the logical OR operation on each pair of corresponding bits.

LOGICAL OR :

  

| ----- |
|

A

 |

B

 |

A | B

 |
|

0

 |

0

 |

0

 |
|

0

 |

1

 |

1

 |
|

1

 |

0

 |

1

 |
|

1

 |

1

 |

1

 |

So, a LOGICAL OR is similar to Addition. If one is true(1) and other is false(0) the result will be true(1). The only condition when the result will be false(0) is when both are false(0).

When we do the OR operation between two 8-bit numbers it goes like this,

lets take two random 8-bit numbers A and B,

A    =    0b00101110

B    =    0b10100011

A | B    =    0b10101111

 

 

3. XOR( ^ ) :

A bitwise XOR( Exclusive OR ) takes two binary representations of equal length and performs the logical XOR operation on each pair of corresponding bits.

| ----- |
|

A

 |

B

 |

A ^ B

 |
|

0

 |

0

 |

0

 |
|

0

 |

1

 |

1

 |
|

1

 |

0

 |

1

 |
|

1

 |

1

 |

0

 |

This is a different operator. It gives a output as true(1) when there are odd number of true(1).

example :

A^B^C = 1 only when (A,B,C) are (0,0,1),(0,1,0),(1,0,0) and (1,1,1).

When we do the XOR operation between two 8-bit numbers it goes like this,

lets take two random 8-bit numbers A and B,

A    =    0b00101110

B    =    0b10100011

A | B    =    0b10001101

 

 

4. Complement( ~ ) :

The bitwise NOT, or Complement, is an unary operation that performs logical negation on each bit, forming the ones' complement of the given binary value.

This operator simply flips the state of the input, if true(1) the the result is false(0) and if the input is false(0) the result is true(1).

When we do the NOT operation on one 8-bit number it goes like this,

lets take a random 8-bit numbers A,

A    =    0b00101110

~A    =    0b10001101

 

 

5. Shift Left( << ) :

In Shift Left the whole number is shifted to left by specific amount. The syntax is a<<b.

example:

141<<2

the binary value of 141 is 0b10001101

When this number is shifted left by two, two zeros are attached to the number from its right and thus it is shifted left.

Effectively, since the number is 8-bit, the value of 141<<2 becomes

therefore 141<<2 = 0b00110100 which is 52.

 

 

6. Shift Right( >> ) :

In Shift Right the whole number is shifted to right by specific amount. The syntax is a>>b.

example:

#### AVR Coding

So as stated earlier, Ports are the ones via which input and output operations are done. 3 basic registers are associated with ports.

They are:

 

1.    DDRx : The Data Direction register, as the name suggests configures the direction of data via port. It is via this register, the pins of port are declared as an input pin or output pin. Clearing a pin to 0 in DDRx register declares that pin as an input pin and setting it to 1 declares it as an output pin.

 

DDRA=0b00000000;

This command instructs the uC to declare all the 8 pins of port A to be input pins. Each digit in the binary no. 0b00000000 represents the pin of corresponding port, in this case, port A.

 

DDRB=0b11111111;

This instruction declares all the 8 pins of PORT B as output pins.

 

DDRC=0b00001111;

This declares the 1st 4 pins of port C (PC0 to PC3) as output pins and last four pins (PC4 to PC7) as input pins.

 

 

2.    **PINx **: PINx used to read data from input port pins. The PINx register store the state of the PORT and thus, is certain pin is at HIGH voltage the corresponding bit in this register is set to 1 by hardware. Therefore, the PINx acts as a status register for the PORT.

example:

If PC4 and PC7 are HIGH and rest are LOW then the value of PINC will automatically become 0b10010000.

If all the pins of PORT A has been declared as an input pins (DDRA=0), then,

var=PINA;

will store the data from port A in variable 'var'.

 

 

3\.   **PORTx**** **: PORTx is serves two purposes. It is used to provide the content of output for output pins and also, it is used to activate/deactivate pull up.

Eg 1:

    DDRA=255; //declares entire Port A pins as an output port.

    PORTA=0b10101010;

Now the content of port A will be 10101010 in binary. If an LED is connected to each pin of port A, then alternate LEDs will glow where the LED connected to PA7 will glow.

Eg 2:

    DDRA=0; //declares entire Port A pins as an input port.

    PORTA=0b11110000;

Here, for the pins PA0-PA3, the pull up is disabled and for pins PA4-PA7, the pull up is enabled.

When pull up is enabled (by setting the bit to 1 in PORTx, where x is an input port), the default input in the corresponding pin is taken to be 1 (HIGH). That means, if no input at that pin, the input will be read as 1.

 

 

 

**Delay**: You can ask the uC to stay/ wait till a particular time. This is done by using the _delay_ms(

) function. To use this function, you need to include util/delay.h header file.

_delay_ms(100);

         This will make the uC wait for 100 milliseconds.

 

 

 

Here's a simple sample program:

# define F_CPU 16000000UL

// ^ this is to tell the uC that you have a 16MHz crystal attached.

 

#include <avr/io.h>

#include <util/delay.h>              // to use _delay_ms()

 

int main(void)

{

DDRB = 0x11111111;                     // initialize port B AS output port

while(1)

{

// LED on

PORTB = 0b11111111;            // all pins of portB = High = Vcc

_delay_ms(500);                // wait 500 milliseconds

 

//LED off

PORTB = 0b00000000;            // all pins of portB = Low = 0v

_delay_ms(500);                // wait 500 milliseconds

}

}

If you connect 8 LEDS, one to each pin of Port B, they'll turn on and off at an interval of 500 milliseconds.

 

#### Picture Demonstration

 

 

Now that we're done with basics of programming, let's work with the softwares.

When you click open Atmel AVR studio 6.0, you see the following window.

 

 

 

![][5]

 

Then, when you click on new project, you'll find the following

 

![][6]

 

Here, we are programming in C language so choose GCC C Executable Project.

Then, the following window opens.

 

 

![][7]

 

Here, choose the device you're working with. In this case, it's Atmega16.

And then the editor opens.

 

![][8]

 

Here is where you write your code.

After writing the code and configuring it, we proceed to build it. To do so, go to Build menu, then, click on Build Solution (F7). Now, it builds your GCC C project. After the build process has finished, you will see the details in the Output window (below the code window). In the end, it shows Build Succeeded. If it doesn't show, check your code once again, as there would be some problem in the code.

 

Now that you're ready with the code, we need to burn it in the uC. For this we're using a robokits USB programmer. Connect the uC to your computer via USB programmer (Make sure you've made the connections correctly in the dev-board.)and open the software.

When you open the software, the following window appears.

 

![][9]

 

Select device, atmega16 in this case. Give the address of the .hex file of the code in the flash memory input box. Set the fuse bits and burn by clicking on erase-write-verify.

Your program is burnt. Your program is running on your microcontroller!!!

 

 

 

 

 

 

 

 

 

 

 

[1]: http://www.atmel.in/microsite/atmel_studio6/
[2]: http://robokits.co.in/shop/index.php?main_page=product_info&products_id=54
[3]: https://lh6.googleusercontent.com/qf9mUAJt_-KMEqrIrP3yOJFF5u-9Pq9yyoULsS2PzrGqV0VtCP6A_CAo9OglqkDy9g5qyB0mePazBAOqH-xl7uTY7EuywbrrtTWnBWyLGWvssHYXaWgns2AJ
[4]: https://lh5.googleusercontent.com/Ur3c8TsmE5JfadDCX6XnQJ9ClxBmS2vM5DWuR8jDOfmEP0p5qPOZYNZIKdQM1oCCx1vc-P3w16bOE_Sf_h90VlfVTfak_oGqdXYqeznob33T-zfQ0UvyzWBO
[5]: https://lh4.googleusercontent.com/r0Vv2nSfJV8T19f4QrkGkrVh6lB9Ng-MBRxrI-8wjlCS1wBAMVfgSJIeyyfTBCFlcEEO8LJ9Jg5cwZN1s-rywVDuSWwS47GuAdJVYkStf5r6C2mwoeJPtvof
[6]: https://lh3.googleusercontent.com/zcyXSZXQ7JPaTO05C7aZA_Yh47YJ_fwLyV7UFFqQHSQYkfb897801V_40rqJpOKLeIpcJgHHoXbFt72-0-Hlj-qk4SrrBKGh9TrYvURwf-zzd8wRrUqH4qzr
[7]: https://lh3.googleusercontent.com/lV10-c6C702DXTabBO3dz8T16wWo7KaHvqajSPj2SMpMJArNN57u2T0BQFgr76-8NN6rDPxXUHX2F5KNiEJVTryK0Hn2kTjsTekGUYjHlV2Sk2MNlZ5IUObj
[8]: https://lh3.googleusercontent.com/upitXdIaWxb_JVq4-93lEmpXy6Bs4u7-_QZk0qc96IqFK8aI_2hpRLl26-KwYKhH2uVJGUUCyFEKfSY4rs6tu-L_wu4U1_9d_qo2MOztf727tuS-k8i9TTR_
[9]: https://lh5.googleusercontent.com/YMlaxc0jGNODJGnmQ4RCbCe3vrf6s_dC6DgE2mID7gJJ22PdYFFGxiFRVh-0pDKh56qh0_0sW2q8JXyLg3vnulIEPTfFsM5P7jQKYxXKbCj9MWptvZHS3Ued
