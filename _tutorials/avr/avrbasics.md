---
layout: post
title: "AVR Basics"
categories:
  - avr
redirect_from: "/tutorials/category/avr/avrbasics/"
---

#### AVR Basics

In autonomous robotics, the robot interacts with the environment autonomously. Hence, it must have certain control system which governs it's movement. It requires a brain which receives the external signals, interprets it and performs an action accordingly.

Here is where microcontroller steps in. Microcontrollers are the brain of the robotic system. Here, we'll discuss and learn about the basics of working with AVR microcontrollers.

Microcontrollers Vs. Microprocessors:

 

A microcontroller is a specialized form of microprocessor that is designed to be self-sufficient in comparison to microprocessors. Microprocessors comprise of the CPU which has ALU, (). Microcontrollers in addition to CPU has ROM, RAM, parallel I/O, serial I/O, counters and a clock circuit. The prime use of a microprocessor is to read data, perform extensive calculations on that data, and store the results in a mass storage device or display the results. The design of the microcontroller is driven by the desire to make it as expandable and flexible as possible whereas, the prime use of a microcontroller is to control the operations of a machine using a fixed program that is stored in ROM. The microcontroller is concerned with getting data from and to its own pins; the architecture and instruction set are optimized to handle data in bit and byte size.

Nomenclature of Atmega uCs :![][1]

 

#### Pin configuration

![][2]

First of all, note that the ATMEGA16 and ATMEGA32 MCUs are completely similar, except the fact that  their memory features are different. ATMEGA16 has 16KB Flash, 1KB RAM and 512B EEPROM whereas ATMEGA32 has 32KB Flash, 2KB RAM and 1KB EEPROM.

1.     1. Okay, now let's start understanding the 40 pins of ATMEGA 16/32. ATMEGA16 has 4 ports namely PORT A, PORT B, PORT C and PORT D. The respective pins are namely PA0-PA7, PB0-PB7, PC0-PC7, PD0-PD7. Each of these ports comprise of 8 pins. Ports are the means by which the uC accepts or gives out data. So, you can realise now that you already know the function of 4x8=32 pins of the uC.

    2. The rest of the eight pins are VCC, GND, RESET(bar),  AVCC, AREF, XTAL1, XTAL2.

Ø  Vcc and Gnd, as you might clearly understand are the pins for the power supply of uC. ATmega16/32 works at 5V. Exceeding this voltage at power supply might result in burning of the IC.

Ø  The Reset (bar) pin, as the name suggests is to reset the uC. However, it's an active low pin, i.e. It get's activated when you give it a low signal.

Ø  AVCC, is the Analog VCC. The uC has the feature of Analog to Digital converter(You can learn about ADC in detail in the ADC tutorial). For this feature the uC requires an Analog circuit which needs to given power externally. So, this analog circuit is powered by AVCC.

Ø  AREF, if the Analog Reference voltage pin. This is again used for ADC purposes.(You can learn about ADC in detail in the ADC tutorial)

Ø  The uC by default works at 1Mhz(internal frequency). We can connect an external crystal oscillator to generate higher frequencies and clock pulses. This external oscillator is connected across the XTAL pins (XTAL1 and XTAL2).

In ATmega16, the pins are capable to perform more than one task. For example, you can see the pins PA0 (ADC0), PB5 (MOSI), PC2 (TCK), PD1 (TXD) etc. These are known as the Alternate Functions of the pins. The Alternate Functions of these pins become active only if you enable certain bits of some registers.

 

#### Peripherals

    Peripherals are the extra in-built features that ATmega provides. There are several        peripherals that AVR offers in ATmega16/32, some are as follows:

* ADC – Analog to Digital Converter (10-bit resolution)
* Timers – two 8-bit and one 16 bit timers
*  USART – Universal Synchronous Asynchronous Receiver Transmitter
* 4 PWM channels - Pulse Width Modulation
* External and Internal Interrupt sources

You can find more extra features of uC in it's datasheet. Separate tutorials have been devoted for usage of these peripherals.

 

#### Registers

Register is a small amount of storage available as part of a CPU or other digital processor. Such registers are (typically) addressed by mechanisms other than main memory and can be accessed more quickly. These are used to configure the functionality of a uC. Since, ATmega16 and ATmega32 are 8-bit microcontrollers, all the registers in them are of 8-bits.

example : Suppose you want to implement timer through your uC. You'll have to tell the microcontroller in your program that you want to use this feature of uC. This purpose is fulfilled by registers.

Each bit of these registers help in configuring the uC for the feature usage. How it's value must be set needn't be remembered, they can be referred from the datasheet.

All the calculations in the uC are also done using 8-bit registers.

example : If you want to store an integer in the microcontroller, then the microcontroller will use 4 registers to save that value as ATmega16 and 32 are 8-bit uC and the integer value is of 32-bits (32/8 = 4).

 

#### Fuse Bits

The[ AVR][3] microcontroller (ATmega16) consists of sixteen fuse bits which are classified as low fuse and high fuse. These Fuse bits can be configured to select the microcontroller clock options or to control some in-built peripherals like JTAG, SPI etc.

Once you set the appropriate fuse bits, you need not set it every time you program the uC until you want to use it under different configuration.

High Fuse Bits:

| ----- |
|

Fuse Bit

 |

OCDEN

 |

JTAGEN

 |

SPIEN

 |

CKOPT

 |

EESAVE

 |

BOOTSZ1

 |

BOOTSZ0

 |

BOOTRST

 |
|

 

Bit No.

 |

 

7

 |

 

6

 |

 

5

 |

 

4

 |

 

3

 |

 

2

 |

 

1

 |

 

0

 |
|

 

Default

values

 |

 

1

 |

 

0

 |

 

0

 |

 

1

 |

 

1

 |

 

0

 |

 

0

 |

 

1

 |

Low Fuse Bits:

| ----- |
|

 

Fuse Bit

 |

 

BODLEVEL

 |

 

BODEN

 |

 

SUT1

 |

 

SUT0

 |

 

CKSEL3

 |

 

CKSEL2

 |

 

CKSEL1

 |

 

CKSEL0

 |
|

 

Bit No.

 |

 

7

 |

 

6

 |

 

5

 |

 

4

 |

 

3

 |

 

2

 |

 

1

 |

 

0

 |
|

 

Default values

 |

 

1

 |

 

1

 |

 

1

 |

 

0

 |

 

0

 |

 

0

 |

 

0

 |

 

1

 |

 

§  The CKSEL bits stand for Clock selection. It is via these bits that uC determine which clock has to be used. (1111-1010 for external crystal)

§  SUT bits determine the Start Up Time. (We usually prefer the longest start time(11) to ensure everything settles down by then.)

§  BODEN and BODLEVEL configure brown out detection settings. Brown out detection unit continuously monitors Vcc level with fixed trigger level.

§  BOOTSZ, BOOTRST stand for boot size and boot reset configure bootloader (a small program that is executed on at boot time of uC) settings.

§  EESAVE bit determines whether or not the EEPROM content is to be erased or not.

§  JTAGEN, SPIEN are the ones which configure the JTAG, SPI peripherals. (JTAG disabled when 1)

§  CKOPT, this bit selects two different modes of oscillator amplifier. For full rail-to-rail oscillation, bit should be 0 else 1.

§  OCDEN, The on-chip debugging is used to run the program step-by-step on hardware to study the internal signal which provides the information about state of the processor. This bit is to enable(0)/disable(1) that.

Considering our requirements at this stage, where we use an external crystal at highest frequency, JTAG disabled, the fuse bit settings come out to be 0xC9FF.

 

#### Prerequisites

Now that we have some basic knowledge about uC, let's learn how to work with it.

Before you start working with AVR, basic thing you need to know is how to program the chip and writing programmes for the chip. AVR microcontrollers are programmable in C language.

 

Softwares Required:  

1.    Software in which you can write the code for your uC.

2.    Software which can burn your code into the uC.

 

Hardware Required:

1.    Microcontroller

2.    Programmer

3.    A development board (would be better for a beginner)

 

For complete programming tutorial, refer to AVR Programming.

 

#### Datasheet

If you want to know anything and everything about the uC you're using, refer to it's datasheet. The datasheet contains all you want to know about bit settings, it's actual working, it's behavior, tolerance etc.

[1]: https://lh6.googleusercontent.com/ykB7vjDDgrv-8kayG6_r3-Zpnqc0apNcJppoCLLnOgvNxKlMB-BPDiXCi0sy11z44Jj4r9LK5XF2CJhBdH3dwLNhvwtbRqwdne7KYA0VMJ_4bnrBy0nl1dgVTQ
[2]: https://lh6.googleusercontent.com/GFJw9DZjoXFRqEGM4a35CKFW1J9ojJy8bOUADuN9_oRj84sEn07LSgc4kgJjEJk8ZiAtvtxUMf1N-bkoo-W6OxGt7O6dZ4fSFS3EIgIUJ8K9iNlvQ1BMA0qn
[3]: http://www.engineersgarage.com/articles/avr-microcontroller
