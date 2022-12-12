---
layout: post
title: "Setting Up the Arduino"
categories:
  - arduino
redirect_from: "/tutorials/category/arduino/settingup/"
---

#### Setting Up

**![][1]**

An **Arduino is an embedded computing platform**, consisting of a single-board microcontroller and a software suite for programming it. It can interact with the environment through the use of sensors, motors, lights etc. as guided by the program burnt on it. A series of boards are sold under the Arduino moniker, of which the Arduino Uno (shown above) is the latest. The Arduino **can be connected to LEDs, displays, buttons, switches, motors, temperature sensors, pressure sensors, distance sensors, GPS receivers, Ethernet modules, **or just about anything that outputs data or can be controlled.

**![][2]**

The Arduino can also be extended with the use of **shields**, which are circuit boards containing other devices (e.g. GPS receivers, LCD Displays, Ethernet modules, etc.) that you can simply connect to the top of your Arduino to get extra functionality. Shields** also extend the pins to the top of its own circuit board** so you still have access to all of them. You don't have to use a shield if you don't want to; you **can make the exact same circuitry using a breadboard**, or by making your own PCB.

Arduino programs are called **sketches**, and are in a language very similar to C. To program the Arduino, you use the **Arduino IDE**. Download it now from <http://arduino.cc/en/Main/Software>. It is available for Windows, Mac OS and Linux.

* Now plug your Arduino into a USB port. To install drivers properly on a Windows system:
* Plug in your board and wait for Windows to begin its driver installation process.  After a few moments, the process will fail, despite its best efforts
* Click on the Start Menu, and open up the Control Panel.
* While in the Control Panel, navigate to System and Security. Next, click on System. Once the System window is up, open the Device Manager.
* Look under Ports (COM & LPT).  You should see an open port named "Arduino UNO (COMxx)"
* Right click on the "Arduino UNO (COMxx)" port and choose the "Update Driver Software" option.
* Next, choose the "Browse my computer for Driver software" option.
* Finally, navigate to and select the Uno's driver file, named "**ArduinoUNO.inf**", located in the "Drivers" folder of the Arduino Software download (not the "FTDI USB Drivers" sub-directory, uncheck subdirectory option).
* Windows will finish up the driver installation from there. Now Fire up the IDE.
* If you're using **Windows 8, **the drivers require disabling the signature requirements of drivers. Follow the steps [here][3] to do so in Windows 8, and then follow the steps above.

**![][4]**

The IDE consists of a menu bar, a quick-access toolbar, and messages at the bottom.  
Set your board from the Tools → Board menu (e.g. we are using an Arduino UNO) and your serial port from Tools → Serial Port. (as shown earlier in the Device Manager)  
Go to File →  Examples →  Basics →  Blink to try out your first Arduino sketch. Don't worry about the code right now, but first let's see if everything is working by uploading it on the board.

Click on the Verify (tick mark) button to compile the code and check that your code is correct and error free, then click Upload (right arrow) button to upload it to the Arduino board. When the process is completed, you should see the **orange LED on the board blinking**. If it is blinking, congratulations, you're all set for the next tutorial

**![][5]**

[1]: https://lh6.googleusercontent.com/Sf75j7-DGEnoH3QFFav2taK7s-Yc2MxbZMw0kC_YF9rnoaSFYhiKgBA71Tcg-nN_bU33azT4H17lZJ0xAH5vmrJ-eZ9k2SCZb49CdYsatwKLIrTQwsI
[2]: https://lh4.googleusercontent.com/-w-9Ojf173Cyc6ewIHoaaJU6uaGLy9UUlqt3OEKgAKRSpzFfzrlkh3VS1XCEEjufccI0uBKjKGp0Wkc7ZZ3JcoI60cvWpccDDMgu9LNaSWaC2HniJKg
[3]: http://www.bryonconnolly.com/windows-8-arduino-driver-install
[4]: https://lh5.googleusercontent.com/xQSyQu_EUUPDPLEdU-6Z-PIdkO5boXMw-Xy-XtVobvxh_YL-wIFDrvHPxtu1TJWMWvB4y5QFBQJt1_tZsoAag-zkMWTKn4rDRK_9U7gr33wQd8mfim0
[5]: https://lh5.googleusercontent.com/8bWqCn8OTUSwZ9rUvTkkoa3Dp9K69ftoVchxjw_vM4OkRq8MI4UF7ht-hR4T1pkDg2vNpU8dw-s7jqdeTeDMV5FxZOQS_8Pv1LR1GPVK1Dlisq_jWuM
