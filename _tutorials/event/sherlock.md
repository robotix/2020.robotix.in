---
layout: post
title: "Sherlock Tutorial"
categories:
  - event
---

####Magnetic Heading Sensor

*Hardware Required: A magnetometer. Eg: **HMC5883L*

**Introduction**

For any general motion, more specifically in aerodynamics, we can characterize the angular motion into three mutually perpendicular axes. These axes are called axes of yaw, pitch and roll. The following image will make it more clear to appreciate.

![]({{ site.baseurl }}/img/tutorial/event/sherlock/image_0.png){:class="img-responsive"}

While the roll and pitch data for angular acceleration and velocity and hence angle of orientation can be provided by an Accelerometer and Gyroscope combination such as the very popular MPU-6050, the yaw angle is much harder to get. The main angle data in roll and pitch directions comes from the components of gravitational forces in the direction, and by using a filter for the data from both sensors we get a fairly accurate guess on the angle. But in the yaw axis, there is no component of a measurable constant force. The only way to find an angle is to integrate the angular velocity to find angle, but over time the integration constants add up and the angle becomes highly inaccurate. In that case for finding out Yaw data, we can use the constant magnetic field of earth as a reference. As a N-S bar magnet always points to the magnetic north and magnetic south of the Earth, the magnetometer uses the data with certain modifications on magnetic declination and is able to accurately determine the angle relative to north the sensor is making.

The most common magnetometer available in the market is the HMC5883L. It enables accurate yaw data with error of max 1 degree. The magnetometer communicates with the interfacing microcontroller using a the I2C interface. The I2C is a simple two wire interface that allows for connection of (2^7)-1 devices on the same 2 wires namely SDA (Serial Data) and SCL (Serial Clock). The Microcontroller which generates the clock on the SCL is called the master. The device that is connected to the microcontroller is called the slave

The I2C would only lead to us getting the raw data from the Magnetometer. For the sake of converting into usable, yaw angle data, we use the library Adafruit HMC5883L which is a part of Adafruit Sensors for Arduino Library.[ Download it from this link](https://github.com/adafruit/Adafruit_Sensor/archive/master.zip). Also you would require the HMC5883L module of their I2C Sensors library for Arduino.[ Download it from this link](https://github.com/adafruit/Adafruit_HMC5883_Unified/archive/master.zip).

Library installation is simple. If on Windows, copy to the installation directory of Arduino/libraries in a separate folder. If on Linux, copy in the libraries section of sketchbook folder in both root and non root environment. I’ve personally seen that root environment in Linux is better for programming microcontrollers.

Once done, burn the test program from File>Examples>Adafruit_HMC_5883U to your board, connect the 3.3V,GND, SDA and SCL to the magnetometer and the Serial monitor upon firing up would show the readings of yaw angle along with components of magnetic fields in X,Y and Z directions. As a matter of fact, you would have to update the declination angle mentioned in the code to the angle at the place where you live.

Now that we know how to use the magnetometer to give accurate heading information relative to magnetic north, here’s a simple program that is one the many applications of this sensor, a servo motor, following your hand angle.

<script src="https://gist.github.com/sourishg/437169da00a4f2f5d86b.js"></script>

####IR signal receiver and Decoder

*Hardware Required: A TSOP1738 IR receiver*

Hardware Interface:

![]({{ site.baseurl }}/img/tutorial/event/sherlock/image_1.png){:class="img-responsive"}

VS: 5V DC

Out: This is the pin from where the signals are sent to our micro controller.

IR signals are transmitted in pulses with different "on" and “off” time periods to transmit binary data in a 38kHz carrier signal. This particular receiver outputs the “on” and “off” signal by extracting it out from the 38kHz signal. The period of “on” and “off” can then be calculated using a microcontroller to give us the binary signal received. This binary signal is then converted to hexadecimal signal for easy reference.

We will be using the following library from receiving and converting the IR signal in Arduino

"[A Multi-Protocol Infrared Remote Library](http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html)"

The following is an example code to receive simple output the Hex signal

<script src="https://gist.github.com/sourishg/21ec227810af08b01ccf.js"></script>

The arena in the event will be publishing the information through the IR signals. We use "NEC" protocol for the transmission. This protocol tells us how to extract the binary data from the signal based on the “on” and “off” times of the signal we receive. The above library used for Arduino can understand the NEC protocol and it will do the extract the binary data and then convert it to HEX for you. But it is a very standard protocol and you can find tutorials online to use it incase you don’t use a library. 

The Hex code which we will receive from the arena will contain the encoded data for the event. This data has to be decoded, so that we get the information being published by the waypoints. For this conversion ( HEX -> Arena information ), we will be using a custom protocol designed for this event.

So let us dive deep into the nitty-gritty of IR signals to find out how the complete information transmission is occurring through the IR signals.

**Infrared Signaling and how it works.**

IR remotes operate by modulating (turning on and off) an infra red (IR) light source. When the IR light source (the IR emitter) is "on" it is actually turning itself on and off thousands of times per second, too fast for the human eye to follow. The rate at which this occurs is called the carrier frequency. The terminology comes from the metaphor that the "carrier" carries the "information". This is done to provide a better transmission system and allow the overall IR system (transmitter and receiver) to operate in noisy (with respect to light) environments. It is important to understand that the IR receiver for a given remote is tuned to IR "carrier" frequency for that remote and will effectively not see IR signals sent on a different carrier frequency such as from other remotes. [Note: The human eye can never see an infrared transmission, so the concept of on and off is not with regards to visible light. Some equipment has a "telltale", a little red light that visibly flashes when the equipment receives IR signals. That is what we can see]

The "information" is placed on the "carrier" using several different techniques. The most common technique is Pulse Width Modulation. In Pulse Width Modulation the duration of the ON (carrier present, light flashing thousands of times per second), or Off (no light at all coming out of the IR emitter) periods is made to vary. Let’s assume, because this is what is done, that we wish to send numbers representing what key has been pressed (and perhaps even what device this key is for). We first need to simplify the problem so that we don’t have deal with too many "Pulse widths". We can easily do this by representing the number in base 2, or binary. In binary there are only two digits to worry about not ten as in decimal. Therefore we only need to have two distinct "pulse widths". If you think about it, the periods of on and off will need to alternate. If they didn’t it would be hard to judge their width. Only one of the widths needs to vary. Either the width of the ON period or the Width of the Off period.

In summary, IR transmission most often takes place by varying the on off times of an IR emitter to represent binary numbers according to some well established pattern.

[Note: At this point I am going to assume that the reader has a basic understanding of the binary numbering system. Not detailed enough to add, subtract or multiply them, but enough to be able to form the decimal value of a binary number.]

Each manufacturer has the option of deciding just how big a number he wishes to send to his equipment, and what meaning is given to that number (or numbers) when they are received. Remember the environment through which the IR signals are passing (the air) is noisy in a light sense. Bright sunlight, Fluorescent lights, all contribute to the noise. Some manufacturers add additional "redundant" information such as sending the numbers twice to ensure that they get to the equipment correctly. Some do not. I will discuss those details when I discuss some of the more common manufacturer’s products.

**The ProntoEdit HEX Format.**

This discussion is only completely valid for IR transmissions using Pulse Width Modulation. Keep in mind that the sole purpose of the HEX data is to represent a series of ON and OFF times for the IR emitter, and when the IR emitter appear to be solidly ON its is rapidly flashing.

The ProntoEdit HEX format uses a pair of numbers to represent an on/off sequence. We will call this a "Burst Pair" (thanks to AHP). The first digit represents an ON time and the second an Off time.

The question is how much time? What the burst pair really contains is the number of cycles of the carrier for which to turn the light on and off. The carrier frequency therefore acts as the clock (not totally true, but good enough for this discussion). To illustrate the point, let us assume a carrier frequency of 40 kilohertz (that is 40,000 cycles per second). This is a very common IR carrier frequency. One cycle of that carrier takes 1/40000 units of time or 25 microseconds. A "burst pair" of 48,24 would turn the IR emitter on for 48*25 Microseconds, and off for 24*25 microseconds. A "burst Pair" of 24,24 would turn the IR emitter on for 24*25 Microseconds, and off for 24*25 microseconds. Because we are using binary numbers we only have two digits to represent (0,1) as opposed to decimal where we would need 10 unique burst pair patterns to represent the 10 decimal digits.

We could for example decide the encoding of a "1" will be represented by having the On period twice as long as the Off period, and a "0" by having them equal. We might choose 48,24 for the "1" and 24,24 for the "0". In fact this is what Sony has done in its IR remotes. [Note: If you work through the numbers you will find that Sony IR signaling uses a sequence of 1200 microseconds of light followed by 600 microseconds of no light to represent a "1"; and a sequence of 600 microseconds of light followed by 600 microseconds of no light to represent a "0"]. In general all IR equipment is forgiving and operates with in a timing tolerance of +/- 10%.

A full IR key code as encoded in the ProntoEdit Hex display contains three discrete parts.

<table>
  <tr>
    <td>Preamble</td>
    <td>Burst Pair Sequence 1</td>
    <td>Burst Pair Sequence 2</td>
  </tr>
</table>


Either one of the burst pair sequences is optional so we will actually have three different patterns of IR encoding.

<table>
  <tr>
    <td>Preamble</td>
    <td>Burst Pair Sequence 1</td>
    <td>Burst Pair Sequence 2</td>
  </tr>
  <tr>
    <td>Preamble</td>
    <td>Burst Pair Sequence 1</td>
    <td></td>
  </tr>
  <tr>
    <td>Preamble</td>
    <td>Burst Pair Sequence 2</td>
    <td></td>
  </tr>
</table>


The preamble does not contain Burst Pairs but rather four (4) hexadecimal (HEX, base 16) numbers, each of which has a precise meaning. I will only discuss them in the context of Learned IR codes. Each Hex number consists of 4 digits.

1. The first number is always a zero (0000) it indicates that the IR pattern is raw data, which means it was learned.

2. The second number is the frequency of the IR carrier in terms of the Pronto internal clock. The following formula where N represents the decimal value of this hex number will give you the frequency of the carrier in Kilohertz:

3. Frequency = 1000000/(N * .241246)

4. A Sony remote will usually have a value for N of 103 (this shows as 67 Hex). Doing the arithmetic we have Freq=1000000/(103*. 241246)= 40,244 or approximately 40,000 cycles per second (well within a tolerance of 40,000 +/- 10%)

5. The third number is the number of Burst Pairs in Burst Pair Sequence #1. Each Burst pair consists of two 4 digit Hex numbers representing the On and Off time of that burst (single binary Bit).

6. The fourth number is the number of Burst Pairs in Burst Pair Sequence #2.

Burst Pair Sequence #1 starts at word 5 if it is present and is immediately followed by the digits of Burst Pair Sequence #2 if it is present (word 4>0000). If Sequence #1 is missing (word 3=0000), then Burst Sequence Number 2 starts at word 5.

A Burst Pair Sequence usually looks as follows:

<table>
  <tr>
    <td>Lead in Burst Pair</td>
    <td>Data Burst Pairs</td>
    <td>Lead Out Burst Pair</td>
  </tr>
</table>


The Lead In Burst pair can be thought of as the hello or wake up burst. It tells the receiver to start listening (or rather looking) very closely as what is coming. It is usually of different timing duration than the Burst Pairs in the data part. Technically it is also used to set the receivers AGC level, a factor related to how much the receiver will amplify the IR light it sees.

The Lead Out burst pair marks the end of the message and usually has a long OFF time period to guarantee that two IR messages can’t be sent too close together. It may actually be incorporated as part of the last data bit if the ON period is what carries the information (that is, the off time is constant in the data portion and the On time varies between two values). Once again, Sony does exactly that.

Remember all data in the IR Hex display is in Hex and to properly interpret these values you must convert them to decimal. Two values should be considered equal if they are within about 10% of each other. They don’t have to be exactly the same.

[Digression to convert a 4 digit Hex "WXYZ" number to decimal, the following formula will work W*4096+X*256+Y*16+Z. W,X,Y,Z represent HEX digits in the range 0-15 where a=10, b=11,c=12,d=13,e=14,f=15. A hex value of 0067 is therefor 16*6+7=103)].

If you understand all of what has been discussed so far you have based the basics of Binary Signaling 101. Go take a breather.

Before we look at some actual IR codes and their detailed formats, we should understand why there might be two burst sequences in the code and not always just one. The first burst sequence is the Once sequence. It is sent if you tap the button on the Pronto which has learned this code. The second burst sequence is called the Repeat sequence. It is sent repeatedly as long as you hold the key on the Pronto down. If you have used an IR remote you already know that all buttons do not "repeat". The two sequences do not have to be the same. In many cases they are, in others they are not. This is generally manufacturer dependent.

**IR Codes**

The world of IR remotes has become a commodity world. IR remotes (simple ones, not the Pronto) are relatively inexpensive. I bought 5, credit card sized, universal remotes for $10. They are three times as thick as a credit card but the same height and width. Fits nicely in a shirt pocket. (A true couch potato must NEVER EVER be without a remote!).

This has happened because there has been a large degree of standardization on the chips that generate the IR codes and receive them. In fact there are only about 5 or 6 such chips being used. Sony, Sharp, Toshiba, Philips and NEC are the most popular, with the NEC one being the most popular of all. The majority of the Asian rim manufacturers (except for Sony, Sharp, Toshiba, and Philips) use NEC chips and therefor NEC format.

I will discuss the exact coding of two of these systems, Sony and NEC. I believe Pioneer, Onkyo, Akai, Canon, Goldstar, Hitachi, Kenwood, NEC, Teac, and Yamaha all use the NEC chip.

[Note: IR data is always transmitted least significant bit first so the first data bit sent is lowest order and in a real binary representation it would be the rightmost bit having a weight of 1.]

SONY IR CODING.

<table>
  <tr>
    <td>Parameter</td>
    <td>Decimal value</td>
    <td>HEX value</td>
  </tr>
  <tr>
    <td>Carrier Frequency</td>
    <td>40 khz</td>
    <td></td>
  </tr>
  <tr>
    <td>Unit of burst time</td>
    <td>25 cycles of the carrier</td>
    <td></td>
  </tr>
  <tr>
    <td>Lead In burst</td>
    <td>96 24</td>
    <td>0060 0018</td>
  </tr>
  <tr>
    <td>"1" Burst Pattern</td>
    <td>48 24</td>
    <td>0030 0018</td>
  </tr>
  <tr>
    <td>"0" Burst Pattern</td>
    <td>24 24</td>
    <td>0018 0018</td>
  </tr>
  <tr>
    <td>Lead Out</td>
    <td>X, 1014</td>
    <td>0018 03f6 or 0030 03f6</td>
  </tr>
</table>


The lead out pattern in the Sony code is added to the last bit by increasing the off time. It is NOT a separate burst of data.

Sony data consists of a different number of bits in the message. The first seven bits (the first seven burst pairs after the lead in burst) always represent the key pressed on the remote. The next N bits where in is 5, 8, or 13 represents a device code. Older Sony devices like a TV (no matter what its true model age, it is a device made by Sony for a long time so it is "old") uses a 12 bit code. A newer one like the DVD S7000 uses a 20 bit code. Some remotes can control more than 1 device so they can send codes of different lengths.

Here is an example from a Sony DVD S7000 as it appears in the ProntoEdit Hex Display

0000 0067 0000 0015 0060 0018 0018 0018 0030 0018

0030 0018 0030 0018 0018 0018 0030 0018 0018 0018

0018 0018 0030 0018 0018 0018 0030 0018 0030 0018

0030 0018 0018 0018 0018 0018 0030 0018 0018 0018

0018 0018 0030 0018 0018 03f6

Let us break it up to decipher it.

Preamble = 0000 0067 000 0015.

Word 1 = 	0 so it is a learned IR code

Word 2 =	103 decimal which when plugged into the formula already given yields an IR Carrier frequency of about 40 khz.

Word 3 = 	0000 is the length of the One Time Burst. There is no one time burst

Word 4 = 	Decimal 21 is the length of the repeat burst. There are 21 bits (Burst pairs) in this code. The code length is 20 bits plus 1 more pair for the Lead in.

Word 5,6	0060 0018 (96,24 decimal) The lead in Burst . 4 units of on followed by 1 unit of off, where a unit is 600 microseconds

Word 7,8	0018 0018 (24,24 decimal) Burst pair 1, bit 1 = "0"

Word 9,10	0030 0018 (48,24 decimal) Burst Pair 2, bit 2 = "1"

Word 11,12	0030 0018 (48,24 decimal) Burst Pair 3, bit 3 = "1"

Word 13,14	0030 0018 (48,24 decimal) Burst Pair 4, bit 4 = "1"

Word 15,16	0018 0018 (24,24 decimal) Burst Pair 5, bit 5 = "0"

Word 17,18	0030 0018 (48,24 decimal) Burst Pair 6, bit 6 = "1"

Word 19,20	0018 0018 (24,24 decimal) Burst Pair 7, bit 7 = "0"

The above is the function code as transmitted it is 0111010. Reversing the string so it is a true binary number with the least significant digit on the right we get 0101110 which in decimal is 46.

Continuing on to the device code we have

Word 21,22	0018 0018 (24,24 decimal) Burst Pair 8, bit 1 = "0"

Word 23,24	0030 0018 (48,24 decimal) Burst Pair 9, bit 2 = "1"

Word 25,26	0018 0018 (24,24 decimal) Burst Pair 10, bit 3 = "0"

Word 27,28	0030 0018 (48,24 decimal) Burst Pair 11, bit 4 = "1"

Word 29,30	0030 0018 (48,24 decimal) Burst Pair 12, bit 5 = "1"

Word 31,32	0030 0018 (48,24 decimal) Burst Pair 13, bit 6 = "1"

Word 33,34	0018 0018 (24,24 decimal) Burst Pair 14, bit 7 = "0"

Word 35,36	0018 0018 (24,24 decimal) Burst Pair 15, bit 8 = "0"

Word 37,38	0030 0018 (48,24 decimal) Burst Pair 16, bit 9 = "1"

Word 39,40	0018 0018 (24,24 decimal) Burst Pair 17, bit 10 = "0"

Word 41,42	0018 0018 (24,24 decimal) Burst Pair 18, bit 11 = "0"

Word 43,44	0030 0018 (48,24 decimal) Burst Pair 19, bit 12 = "1"

Word 45,46	0018 03fc (24,24 decimal) Burst Pair 20, bit 13 = "0"

The device code as transmitted is 0101110010010. Reversing the order to make it a binary number we get 0100100111010. Converting it to decimal we get 2362.

This means that the Sony DVD S7000 has a device code of 2362 and this key has a function code of 46. This is the discrete Power ON key. If a Sony device has a discrete Power on Code it is normally 46. Note the dead time on the second half of the last data burst pair. Sony does not use a unique lead out, but rather adds the inter-message minimum time to the last data burst’s off period

Sony codes are fairly simple. Sony builds a lot of power into the IR senders, and good noise rejection in their receivers. They use no redundancy or error checking in the code.

NEC IR Code Format

<table>
  <tr>
    <td>Parameter</td>
    <td>Decimal value</td>
    <td>HEX value</td>
  </tr>
  <tr>
    <td>Carrier Frequency</td>
    <td>40 khz</td>
    <td></td>
  </tr>
  <tr>
    <td>Unit of burst time</td>
    <td>22 cycles of the carrier</td>
    <td></td>
  </tr>
  <tr>
    <td>Lead In burst</td>
    <td>342 171</td>
    <td>0156 00ab</td>
  </tr>
  <tr>
    <td>"1" Burst Pattern</td>
    <td>22 96</td>
    <td>0016 0060</td>
  </tr>
  <tr>
    <td>"0" Burst Pattern</td>
    <td>22 24</td>
    <td>0016 0016</td>
  </tr>
  <tr>
    <td>Lead Out</td>
    <td>22, 1427</td>
    <td>0016 0593</td>
  </tr>
</table>


Doing the arithmetic we see that this code uses a base time of 550 microseconds. The lead in is a unique burst as is the lead out. It is a pulse width modulation system where the information is carried in the length of the off time with a fixed duration of on time.

The NEC message format is quite a bit more complicated then that of Sony. It is always a 32-bit code. Which consists of 16 bits of data and 16 bits of error checking. The code is divided into four 8-bit fields.

<table>
  <tr>
    <td>Device Code</td>
    <td>Device code compliment</td>
    <td>Function code</td>
    <td>Function Code Compliment</td>
  </tr>
</table>


A device code will be in the range of 0 to 255 or 256 discrete device codes. The same is true of the function code. The compliment fields are the 1’s compliment of the code they represent. The device code and the device code compliment must add up to 255 or else there is an error. The same is true of the function code and the function code compliment. NEC uses a discrete lead in and a discrete lead out, so the total code length will take 34 burst pairs to represent as a Burst Pair Sequence.

The following as an example of a Pioneer IR sequence for the CLD79 Elite Laser Disk Player.

0000 0067 0000 0022 0156 00ab 0016 0016 0016 0016

0016 0016 0016 0060 0016 0016 0016 0060 0016 0016

0016 0060 0016 0060 0016 0060 0016 0060 0016 0016

0016 0060 0016 0016 0016 0060 0016 0016 0016 0016

0016 0060 0016 0016 0016 0060 0016 0060 0016 0016

0016 0016 0016 0016 0016 0060 0016 0016 0016 0060

0016 0016 0016 0016 0016 0060 0016 0060 0016 0060

0016 0593

If you work out all of the detailed analysis in a manner similar to that shown for the sony you should determine that the carrier frequency is indeed 40 khz, there are 34 total burst pairs in the one burst sequence used, and the burst sequence is repeatable. The actual 32 bits of data is: 00010101 11101010 01011000 10100111 Looking at the adjacent fields (1 & 2, 3 & 4) we see they are compliments of each other. A short way of checking for compliments is that ones become zeros and zeros become ones.

The device code as transmitted is 00010101. Reversing it we get the binary value 10101000. This is the decimal value of 128+32+8=168.

The function code is transmitted as 01011000. Reversing it we get the binary number 00011010. This is the decimal value 16+8+2=26.

This is the discrete Power On Code for the CLD 79

In the event Sherlock, we would use NEC protocol. Since NEC protocol transmits 32 bit of data where 16 bits are real data and the other 16 bits are the 1s complement of real data used to check error during transmission. As mentioned above the distribution of bits are as follows.

8 bits: Device Code, next 8 bits for the complement of device code. The next 8 bits for function code and the following 8 bits are complement of device code.

To transmit heading which has a maximum value of 359, we need to use minimum on 9 bits. Hence we use 8 bits each from the device code and the function code together to get 16 bits for transmission. For example we need to transmit 359.

Binary of 359 is 0000000101100111.

Divide it into two 8 bits chunk 00000001 01100111

Write the 1s compliment of each chunk to its side.

00000001 11111110 01100111 10011000

Hence this is the binary we need to send as NEC: 00000001 11111110 01100111 10011000.

This binary number can then be converted to a hexadecimal number for easy reference.

The hexadecimal for the above binary code is 01FE6798

A sample Arduino code is shown below to convert heading to hex and vice versa.

In the code, we use Ken Shirriff’s IR library for Arduino.

Follow this link to learn more about the library and circuit connections as recommended by it.[ http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html](http://www.righto.com/2009/08/multi-protocol-infrared-remote-library.html)

<script src="https://gist.github.com/sourishg/3145324147cd935ee032.js"></script>

