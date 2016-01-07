---
layout: post
title: "Sherlock FAQs"
permalink: '/event/sherlock/faq/'
---

Q: Can I use library other than Adafruit for HMC5883L?

	Yes definitely. The sensor would give the same results for all libraries. Usage of a different sensor may give different result though.

Q: Can I use multiple Arduinos?

	If it serves your purpose, yes.

Q: How do I register for the event?

	Registration for the events has to be done from Kshitij’s website. For the exact procedure, check www.ktj.in.

Q: Is there any abstract submission for the event?

	No abstract submission is required.

Q: How many members can be there in a team?

	Each team can have a maximum of four members.

Q: Can I use protocol other than NEC for receiving?

	No, you can't. The data transmission would not work that way.

Q: What would happen if the time runs out before my robot finishes the end point?

	The score would stop adding up immediately, and the 500 points for reaching the end point won't be awarded.

Q: What do you exactly mean by magnetic heading?

	As explained in the tutorial, the angle with respect to north in the clockwise direction. East is 90 degrees, West 270 degrees. It is calculated with respect to a point which in our case is the POI transmitting.

Q: What do the POIs look like?

	POIs are simply holes in the arena with an IR LED in them. A 5 cm radius circle would be drawn outside the POI in order to distinguish it from the rest of the arena.

Q: Can I use external EEPROM if my Arduino falls short on memory?

	Yes you can for sure.

Q: Do I have to flash a LED at each POI or at the final point only?

	The LED has to be flashed on the end point only.

Q: What is the maximum dimension for my robot?

	The robot has to fit inside a box of size 25cmx25cmx20cm (L X B X H). Failing this would disqualify the robot.

Q: What is the arrangement for power supply?

	Standard 220V 50Hz sockets would be provided. Usage of LiPo or equivalent batteries is permitted.

Q: Can I use any other IR receiver than TSOP 1738?

	Yes, but the receiver should be able to accept 38kHz signal. You may use IR photodiode to receive RAW IR signals also.