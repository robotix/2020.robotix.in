---
layout: post
title: "Interrupts in AVR"
categories:
  - avr
redirect_from: "/tutorials/category/avr/interrupts/"
---

#### What are Interrupts?

One of the most fundamental and useful principles of modern embedded processors are _interrupts_. An interrupt is a way for an external (or, sometimes, internal) event to pause the current processor's activity, so that it can complete a brief task before resuming execution where it left off.

Example:  
_Let's say we are at home, writing an excellent tutorial on how a principle of modern embedded processors works. We are very interested in this topic, so we are devoting all our concentration to our keyboard. However, half way though, the phone rings. Despite not being by the phone waiting for a call, we are able to stop what we are doing, take the call, and go back where we left off once we have hung up._

_Consider you're at home watching an excellent movie(HD print). You are very much interested in watching the end of the movie and suddenly the doorbell rings. Now you have to pause your movie, get up from your chair, open the door and then resume the movie form where you left it._

This is how a microprocessor's interrupt works. We can tell the processor to look for some specific specific external event (like data reception complete or pin changing its state like going from high to low) to become true. While processor checks for these events we can parallely do some other job. When these events occur, we stop the current task, handle the interrupt, and resume back where we left off. This gives us a great deal of flexibility. Rather that constantly checking the FLAG bit via code we can trust interrupts to do the job of checking.

What we are doing is called _asynchronous_ processing - that is, we are processing the interrupt events outside the regular "execution thread" of the main program. The point to be noted here is that we aren't doing parallel programing (- running two or more codes simultaneously) but we are just pausing the current program and resuming to it after handing the interrupt.

We can link a specific interrupt source to a specific handler routine, called an **_Interrupt Service Routine_**, or **_ISR_** for short.

#### Interrupts available in AVR

**There are two main sources of interrupts:**

* Hardware Interrupts : which occur in response to a changing external event such as a pin going low, or a timer reaching a preset value
* Software Interrupts : which occur in response to a command issued in software

In 8-bit AVRs the software interrupts are not available, which are basically used for generating user defined Exceptions and handling them as and when they occur.  
Each microcontroller has a set of interrupt sources available.  
Some of the interrupts available in ATmega16 are as follows:

* External Interrupt
* Timer Interrupt
* USART Receive and Transmit Interrupt
* EEPROM Ready Interrupt
* ADC conversion complete

#### How do we handle Interrupts?

The method of handling interrupts differs in different languages.

For an Interrupt to fire ISR three things must be true

1. The AVR's global Interrupts Enable bit must be set to one in the microcontroller control register SREG. This allows the AVR's core to process interrupts via ISRs when set, and prevents them from running when set to zero. It is like a global ON/OFF switch for the interrupts. By default this bit is zero.
2. The individual interrupt source's enable bit must be set. Each interrupt source has a separate interrupt enable bit in the related peripherals control registers, which turns on the ISR for that interrupt. This must also be set, so that when the interrupt event occurs the processor runs the associated ISR.
3. The condition of the interrupt must be me - for example when the adc conversion is complete then only it will fire ADC conversion interrupt.

When all three conditions are met, the AVR will fire our ISR each time the interrupt event occurs.

The C code for writing the ISR is as follows  
**pseudo C code:**

#include <avr/interrupt.h>

ISR({Vector Source}_vect)  
{  
   // ISR code to execute here  
}

#### How do we enable an interrupt?

If you simply add an ISR to your existing program, you will find that it appears to do nothing when you try to fire it. This is because while we have defined an ISR, we haven't enabled the interrupt source.

Firstly, we need to set the I bit in the SREG register. This is the Global Interrupt Enable bit, without which the AVR will simply ignore any and all interrupts.  
In C, we can use predefined library functions. In the case of AVR-GCC we just use the sei() and cli() macro equivalents defined in <avr/interrupt.h>:

pseudo C code:

sei(); // Enable Global Interrupts  
cli(); // Disable Global Interrupts

Now, we need to enable a specific interrupt source, to satisfy the second condition for firing an ISR. The way to do this varies greatly between interrupt sources, but always involves setting a specific flag in one of the peripheral registers. Let's set an interrupt on the _USART Receive Complete (USART RX) interrupt_. According to the datasheet, we want to set the RXCIE bit in the UCSRB register:

pseudo C code:

UCSRB |= (1 << RXCIE);

After sei(); and setting RXCIE the ISR will code will run when the data receive is complete.

#### Some Important Points

There are a few things to keep in mind when using interrupts in your program:

Now we have learnt what are interrupts in general. In the next tutorial we will see how to implement specific interrupts like ADC Conversion Complete Interrupt, External Interrupts, Timer Interrupts etc.