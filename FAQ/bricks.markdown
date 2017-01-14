---
layout: post
title: "B.R.I.C.K.S FAQs"
permalink: '/event/bricks/faq/'
---

**Q: How do I register for the event? Is there any abstract submission for
the event?** 

Registration for the events has to be done from www.ktj.in. No abstract
submission is required.


**Q: How many members can be there in a team and how many team members can
control the motion of the bot during the run?**


There can be a maximum of 4 members in a team and only 2 team members can control the robot during the run. Also you cannot change the teammates who are controlling the bot during the run. You will have to take a timeout for that purpose. You can also alot a team member with the task of holding the wires of the robot so that they do not interfere with the arena or the bot.


**Q: What kind  of micro controller can be used to control the locomotion and gripping of the robot?**

Any 8 bit micro controller can be used for the locomotion and gripping mechanisms. For example arduino, AVR etc.


**Q: What will be the dimensions and materials of the blocks?**

Size of blocks will be `6*6*6` . The weight of hollow block will be less 50 grams, solid blocks will be 70 grams and no block will weigh more than 200 grams.


**Q: Can the bot be connected to the Laptop during the run?**

Yes, the bot can be connected to the laptop during the run, but it can only be done if you are using the laptop camera for gesture communication. All on board processing as well as locomotions and movements must be on the 8/16 bit micro controller. You cannot use the laptop only as a power source either and you must burn the code on the bot and also have a power source like an on board battery or an adapter source.


**Q: What is the format of the data about the number of blocks sent to the robot at the start of the run?**

The data will be given via bluetooth in the following format: `*X&Y#` where:

* ‘*’ is start character
* ‘X’ is number of solid cubical block needed (Single digit number).
* ‘&’ is separator character.
* ‘Y’ is number of solid cylindrical block needed (Single digit number).
* ’#’ is stop character.

No quotes (‘’) will be transmitted. It is just for participant's understanding.


**Q: How will the data be sent to the robot?**

The data will be sent at the start of the run using a mobile app [Bluetooth Terminal](https://play.google.com/store/apps/details?id=Qwerty.BluetoothTerminal&hl=en) after which it will be disconnected and the run will start.

The participants are required to rename their bluetooth module to their teamID before the start of the run.


**Q: After timeout what will be the orientation of the robot?**

It will be the same as the position and orientation of the robot before the timeout. The final decision rests with Team Robotix.


**Q:  Are there any arrangements for the calibration of the sensors prior to the event?**

A sample arena with sample blocks will be available to the participants throughout the fest. Participants will not be allowed to test their bots on the main arena.


**Q: What strategy can be used by the user to differentiate blocks of different shapes?**

If participant wants to send the shape information to the bot, They can do so using a buttonless mechanism only. 