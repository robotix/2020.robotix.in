---
layout: post
title: "USART-UART"
categories:
  - avr
redirect_from: "/tutorials/category/avr/usart/"
---

#### Introduction

**USART **stands for "**Universal Synchronous Asynchronous Receiver and Transmitter**".

It is a mode of communication between devices which is **serial **in nature, i.e. data units, say a byte is transmitted **one bit at a time**. This is unlike parallel modes of transmission where entire data unit, say a byte (8 bits) is transmitted at once.

**![][1]**

There are **two data lines, RX and TX**, which stand for receiver and transmitter, **relative to a device**.** In normal microcontroller circuits the TTL (Transistor-Transistor Logic) standard** for serial communication is used, where High = +5V, Low = 0V. But **computers use RS232 communication standard**, the protocol which specifies High = -12V, Low = +12V. This conversion is achieved through a **MAX232 integrated circuit**. You can **make the converter** yourself, as detailed below, or you can **buy direct USB-to-USART** connectors.

#### Level Conversion Circuit

Components

| S.No. | Item                    | Quantity | Rating |
| ----- | ----------------------- | -------- | ------ |
| 1     | MAX232 IC               | 1        |        |
| 2     | Capacitors              | 4        | 1uF    |
| 3     | Capacitors              | 1        | 10uF   |
| 4     | DB9 Female Connector    | 1        |        |
| 5     | Small PCB               | 1        |        |
| 6     | USB to Serial Converter | 1        |        |

 

 

 

 

 

 

**![][2]![][3]**

**![][4]**

The actual bit-level explanation of data transfer through USART is beyond the scope of this tutorial. We are more interested in the **ways to use it through an AVR Microcontroller**. The microcontroller has special hardware which can handle the USART module once the data to be transmitted has been sent to it.

#### USART Registers

The settings to use the USART module is set using certain registers, the information about which is provided in the microcontroller datasheet.

* **UDR : USART Data Register :** contains the received data or the transmitted data.
* **UCSRA / UCSRB / UCSRC : USART Control and Status Registers :** used to configure the USART, also stores some status about it.
* **UBRRH / UBRRL : USART Baud Rate Register : **stores a value corresponding the baud rate used. The **baud rate measures the speed of data transmission **in bits per second. We shall use a standard rate of 9600 baud here.

The individual bits in the registers are explained now. Bits of interest are highlighted in bold:

_**UCSRA: USART Control and Status Register A:**_

| ----- |
|  Bit No. |  **7** |  **6** |  5 |  4 |  3 |  2 |  1 |  0 |
|  Name |  **RXC** |  **TXC** |  UDRE |  FE |  DOR |  PE |  U2X |  MPCM |

**RXC : **set when the USART has completed receiving a byte from the host (may be your PC) and the program should read it from UDR  
**TXC : **set when the USART has completed transmitting a byte to the host and your program can write new data to USART via UDR

_**UCSRB: USART Control and Status Register B:**_

| ----- |
|  Bit No. |  **7** |  **6** |  5 |  **4** |  **3** |  **2** |  1 |  0 |
|  Name |  **RXCIE** |  **TXCIE** |  UDRIE |  **RXEN** |  **TXEN** |  **UCSZ2** |  RXB8 |  TXB8 |

**RXCIE: Receive Complete Interrupt Enable **\- when one, the the associated interrupt is enabled.  
**TXCIE: Transmit Complete Interrupt Enable** \- when one, the the associated interrupt is enabled.  
**RXEN: Receiver Enable - **when one, the USART receiver is enabled.  
**TXEN: Transmitter Enable** -when one, the USART transmitter is enabled.  
**UCSZ2: USART Character Size** \- Discussed later.

_**UCSRC: USART Control and Status Register C:**_

| ----- |
|  Bit No. |  **7** |  **6** |  5 |  4 |  3 |  **2** |  **1** |  0 |
|  Name |  **URSEL** |  **UMSEL** |  UPM1 |  UPM0 |  USBS |  **UCSZ1** |  **UCSZ0** |  UCPOL |

**IMPORTANT **: The UCSRC and the UBRRH (discussed below) register shares same address so to determine which register user want to write is decided with the 7th(last) bit of data if its 1 then the data is written to UCSRC else it goes to UBRRH. This seventh bit is called the **URSEL: USART Register Select.**  
**UMSEL: USART Mode Select -** This bit selects between asynchronous and synchronous mode. As asynchronous mode is more popular with USART we will be using that. 0 =asynchronous, 1 = synchronous  
**UCSZ: USART Character size **\- These three bits (one in the UCSRB) selects the number of bits of data that is transmited in each frame. Normally the unit of data in MCU is 8BIT (C type "char") and this is most widely used so we will go for this. Otherwise you can select 5,6,7,8 or 9 bit frames.

_**UBRR: USART Baud Rate Register**_

This register is 16BIT wide so **UBRRH **is the High Byte and **UBRRL **is Low byte. But as we are using C language it is directly available as UBRR and compiler manages the 16BIT access. This register is used by the USART to generate the data transmission at specified speed (say 9600Bps). UBRR value is calculated according to following formula:

**![][5]**

Where fosc is your CPU frequency say 16MHz. For a frequency of 16 MHz and baud rate of 9600, the UBRR value should be 103.

 

#### Sample AVR Code

Make sure you understand this code and then burn it on the microcontroller. **Use C9 and FF as the fuse bits (high and low).**

#### Sample Sender Code

Now we will make a** C++ program to send data through the USB wire and MAX232 circuit **to the microcontroller, so that the corresponding combination of LEDs are lit up. We will include some files in our program to make the sender program simple.

These are:

1. [**tserial.h** ][6]– A header file for starting the serial device
2. [**tserial.cpp**][7] – The C++ program that actually initializes the device
3. [**bot_control.h**][8] – The file which contains the definitions of the functions which shall be used for the purpose of serial communication [send_data(), startDevice(), stopDevice() etc]

Download these files and include them in your sender program.

* The object comm is of the class serial, which is defined in the bot_control.h file. This **class has the member functions which we need to access for starting and closing the communication device, as well as sending data among other tasks.**
* The **COM port can be found out by going to the Device Manager **and checking the specifications of the device from there (usually under the Ports drop down). The second parameter is an integer which is the baud-rate or the data transfer rate for the communication protocol.

[1]: https://docs.google.com/drawings/image?id=slvYquHXgUeM4iu0DpvfvgQ&w=610&h=162&rev=37&ac=1
[2]: https://lh3.googleusercontent.com/HQzmQjHO3DndpVzqQg89hUX0opwL0BEbIcdgEN3N0SrxzkAW57tDe5eZcvvIHmSfU3ETnTTSrbrvPMNSQ_qdCh5Ra4klcv7jzVMGS1OVKwrt3mULGVY
[3]: https://lh4.googleusercontent.com/QFX0a7LtoebctZ__9JGofxk6d1ZWVkVd1A0BwRz6Kh34y56uDpI6EWEZk8VKnekIiKXIQS-lkz3L2dPGJFkNWcBd4eB8A7UeStQb7onw0A3y-oz7xh8
[4]: https://lh4.googleusercontent.com/ycy-4nB7P8hulU9kHrA5AAp1E3hShatCMKRDso2mVhrQGb9wvrfC9ivPdBiSYyGhmhS_UvmFdcChQ6jZ09TgepTPlHtwOUcGouKW-I5gMrYs2IQZBeY
[5]: https://lh4.googleusercontent.com/1hOAVMtlBCCCWV6x1Ew_ZKn9H_K1Z1OOKK_YufokmXQLHQ2VDFY_Fv6ztcBmkZEzNcLh-YrQg7BmInjl58EybrG81_f50fPXQFH-FsFF9X9BNrYyUbI
[6]: http://robotix.in/samplecode/tserial.h
[7]: http://robotix.in/samplecode/tserial.cpp
[8]: http://robotix.in/samplecode/bot_control.h
