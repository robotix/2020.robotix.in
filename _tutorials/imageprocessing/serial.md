---
layout: post
title: "Serial Communication"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/serial/"
---

#### Serial Communication

For an explanation of what is serial communication and where it is used, please visit this tutorial on our website-  
<http://robotix.in/tutorials/category/imageprocessing/comm>

We need to create a serial port object. Serial port object is just a name given to that serial port so that we can use it in later commands.

   Serial Port Object : Serial-COM1

   Communication Settings  
      Port:               COM1  
      BaudRate:           9600  
      Terminator:         'LF'

   Communication State  
      Status:             closed  
      RecordStatus:       off

   Read/Write State   
      TransferStatus:     idle  
      BytesAvailable:     0  
      ValuesReceived:     0  
      ValuesSent:         0

**Setting up serial port object**

This line of command only constructs the object. It does not check/setup/initialize the communication. This command will still work even if the serial port is not connected to any device. Many objects can be created for a serial port but only one can be connected at a time. This shows all the property of the constructed serial port object.  
In MATLAB, s is a structure which has all the above properties. We can access/modify them using dot(.) operator. Note that the Status is closed. It implies that the serial port is not connected.

Baud Rate is the rate of transfer of the data in bits/sec.  
We can change the Baud Rate using the set method as follows-

You can also setup different Baud Rate while making the serial port object as follows-

You can verify the change using get method-

The following will also show the similar result-

**Setup the Connection**

Before you actually write the data to the serial port, you must connect to device. This is like a JAVA lock. Only one entity can acquire the lock at a time. Use fopen to acquire the lock and setup the connection.

Notice the status property of the serial port object-

If the lock is already acquired, fopen will give an error. To avoid error, first check the Status property of the serial port object. If it is closed then try to setup the connection.

**Writing to Serial Port in MATLAB**

MATLAB can write any kind of data to the serial port binary, string, int, float etc. with specified precision. We use fwrite or fprintf to write data.

Transfer an int/float array-

The precision specifies the datatype of the vector array. It can be 'int8', 'int16', 'float32', 'float64', 'uint8', 'char' etc.

String-

You can use fprintf for strings as well-

You can specify the format in fprintf for a string.

**Reading from Serial port on an Arduino**

You can follow these steps to read data in Arduino-

 

You can choose the kind of data you are expecting, otherwise byte dataype can be used.