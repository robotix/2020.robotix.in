---
layout: post
title: "Warehouse Tutorial"
categories:
  - event
---

###RFID Reader

Radio-Frequency IDentification (RFID) is the wireless use of electromagnetic fields to transfer data, for the purposes of automatically identifying and tracking tags attached to objects. The tags contain electronically stored information.

**Readers**

RFID systems can be classified by the type of tag and reader.

A Passive Reader Active Tag (PRAT) system has a passive reader which only receives radio signals from active tags (battery operated, transmit only). The reception range of a PRAT system reader can be adjusted from 1–2,000 feet (0–600 m), allowing flexibility in applications such as asset protection and supervision.

An Active Reader Passive Tag (ARPT) system has an active reader, which transmits interrogator signals and also receives authentication replies from passive tags.

An Active Reader Active Tag (ARAT) system uses active tags awoken with an interrogator signal from the active reader. A variation of this system could also use a Battery-Assisted Passive (BAP) tag which acts like a passive tag but has a small battery to power the tag's return reporting signal.

**Active, Semi-passive and Passive RFID Tags:**

Active, semi-passive and passive RFID tags are making RFID technology more accessible and prominent in our world. These tags are less expensive to produce, and they can be made small enough to fit on almost any product.
Active and semi-passive RFID tags use internal batteries to power their circuits. An active tag also uses its battery to broadcast radio waves to a reader, whereas a semi-passive tag relies on the reader to supply its power for broadcasting. Because these tags contain more hardware than passive RFID tags, they are more expensive. They are reserved for costly items that are read over greater distances -- they broadcast high frequencies from 850 to 950 MHz that can be read 100 feet (30.5 meters) or more away. If it is necessary to read the tags from even farther away, additional batteries can boost a tag's range to over 300 feet (100 meters).
Passive RFID tags rely entirely on the reader as their power source. These tags are read up to 20 feet (six meters) away, and they have lower production costs, meaning that they can be applied to less expensive merchandise. These tags are manufactured to be disposable, along with the disposable consumer goods on which they are placed. Whereas a railway car would have an active RFID tag, a bottle of shampoo would have a passive tag.

**Storage**

Another factor that influences the cost of RFID tags is data storage. There are three storage types:

- read-write
- read-only
- WORM (write once, read many).

Read-write tag's data can be added to or overwritten.
Read-only tags cannot be added to or overwritten -- they contain only the data that is stored in them when they were made.
WORM tags can have additional data (like another serial number) added once, but they cannot be overwritten.

**Advantages:**

- No line of sight requirement.
- The tag can stand a harsh environment.
- Long read range.
- Portable database.
- Multiple tag read/write.
- Tracking people, items, and equipment in realtime.
- Can easily be embedded in an object.

**RFID Reader:**
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image04.png){:class="img-responsive"}

**RFID Cards:**

**outside:**
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image01.png){:class="img-responsive"}

**inside:**
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image05.png){:class="img-responsive"}
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image00.png){:class="img-responsive"}

**Sample code for RFID detection**

<script src="https://gist.github.com/sourishg/a98e3ff37cf5fe483f11.js"></script>

###Forklift Mechanism

**Introduction:**

Forklift is basically a vehicle with a pronged device in front for lifting and carrying heavy loads.

**Types of Mechanisms:**

Here we are going to discuss these mechanisms of forklift:

- Rack and pinion mechanism
- Hydraulic mechanism

**Rack and Pinion Mechanism**

AAaQ rack and pinion is a type of linear actuator that comprises a pair of gears which convert rotational motion into linear motion. 

**Design:**
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image02.gif){:class="img-responsive"}

**Material required:**

- Rack
- Pinion
- Wooden planks
- DC Motor
- Wires

**Working:**

- A motor governs the motion of the circular gear(pinion).
- The pinion engages teeth on a linear "gear" bar called "the rack"; rotational motion applied to the pinion causes the rack to move relative to the pinion, thereby translating the rotational motion of the pinion into linear motion. 
- When the rotation of the pinion forces the rack to move, the platform, attached to the rack, moves up/down depending on the direction of rotation of pinion.

![]({{ site.baseurl }}/img/tutorial/event/warehouse/image03.gif){:class="img-responsive"}

**Hydraulic Mechanism**

A rack and pinion is a type of linear actuator that comprises a pair of gears which convert rotational motion into linear motion. 

**Design:**
![]({{ site.baseurl }}/img/tutorial/event/warehouse/image06.jpg){:class="img-responsive"}

**Working:**

- When the button is pushed for hydraulic, pressure in liquid spreads throughout, and implements greater force at the transmitter platform.
  - Force on platform = Force on button x (Area of button / Area of output nozzle)
- Due to this push, the platform moves down, and hence there is a downward tension in the string of pulley.
- Due to this tension, the forklift rises up.