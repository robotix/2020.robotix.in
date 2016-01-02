---
layout: post
title: "Sherlock Tutorial"
categories:
  - event
---

####Magnetic Heading Sensor

Hardware Required:

- A magnetometer. Eg: HMC5883L

**Introduction**

For any general motion, more specifically in aerodynamics, we can characterize the angular motion into three mutually perpendicular axes. These axes are called axes of yaw, pitch and roll. The following image will make it more clear to appreciate.

![Yaw Pitch and Roll]({{ site.baseurl }}/img/tutorial/event/sherlock/image_0.png){:.img-responsive}

While the roll and pitch data for angular acceleration and velocity and hence angle of orientation can be provided by an Accelerometer and Gyroscope combination such as the very popular MPU-6050, the yaw angle is much harder to get. The main angle data in roll and pitch directions comes from the components of gravitational forces in the direction, and by using a filter for the data from both sensors we get a fairly accurate guess on the angle. But in the yaw axis, there is no component of a measurable constant force. The only way to find an angle is to integrate the angular velocity to find angle, but over time the integration constants add up and the angle becomes highly inaccurate. In that case for finding out Yaw data, we can use the constant magnetic field of earth as a reference. As a N-S bar magnet always points to the magnetic north and magnetic south of the Earth, the magnetometer uses the data with certain modifications on magnetic declination and is able to accurately determine the angle relative to north the sensor is making.

The most common magnetometer available in the market is the HMC5883L. It enables accurate yaw data with error of max 1 degree. The magnetometer communicates with the interfacing microcontroller using a the I2C interface. The I2C is a simple two wire interface that allows for connection of (2^7)-1 devices on the same 2 wires namely SDA (Serial Data) and SCL (Serial Clock). The Microcontroller which generates the clock on the SCL is called the master. The device that is connected to the microcontroller is called the slave

The I2C would only lead to us getting the raw data from the Magnetometer. For the sake of converting into usable, yaw angle data, we use the library Adafruit HMC5883L which is a part of Adafruit Sensors for Arduino Library. [Download it from this link](https://github.com/adafruit/Adafruit_Sensor/archive/master.zip).  
Also you would require the HMC5883L module of their I2C Sensors library for Arduino. [Download it from this link](https://github.com/adafruit/Adafruit_HMC5883_Unified/archive/master.zip).

Library installation is simple. If on Windows, copy to the installation directory of Arduino/libraries in a separate folder. If on Linux, copy in the libraries section of sketchbook folder in both root and non root environment. I’ve personally seen that root environment in Linux is better for programming microcontrollers.

Once done, burn the test program from File>Examples>Adafruit_HMC_5883U to your board, connect the 3.3V,GND, SDA and SCL to the magnetometer and the Serial monitor upon firing up would show the readings of yaw angle along with components of magnetic fields in X,Y and Z directions. As a matter of fact, you would have to update the declination angle mentioned in the code to the angle at the place where you live.

Now that we know how to use the magnetometer to give accurate heading information relative to magnetic north, here’s a simple program that is one the many applications of this sensor, a servo motor, following your hand angle.

{% highlight cpp %}
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_HMC5883_U.h>
#include <Servo.h>

/* Assign a unique ID to this sensor at the same time */
Adafruit_HMC5883_Unified mag = Adafruit_HMC5883_Unified(12345);
float heading, headingsum=0;
float headingDegrees;
float declinationangle;

void displaySensorDetails(void)
{
    sensor_t sensor;
    mag.getSensor(&sensor);
    Serial.println("------------------------------------");
    Serial.print  ("Sensor:       "); Serial.println(sensor.name);
    Serial.print  ("Driver Ver:   "); Serial.println(sensor.version);
    Serial.print  ("Unique ID:    "); Serial.println(sensor.sensor_id);
    Serial.print  ("Max Value:    "); Serial.print(sensor.max_value); Serial.println(" uT");
    Serial.print  ("Min Value:    "); Serial.print(sensor.min_value); Serial.println(" uT");
    Serial.print  ("Resolution:   "); Serial.print(sensor.resolution); Serial.println(" uT");
    Serial.println("------------------------------------");
    Serial.println("");
    delay(500);
}

Servo myservo;

void setup(void)
{
    Serial.begin(9600);
    Serial.println("HMC5883 Magnetometer Test"); Serial.println("");

    /* Initialise the sensor */
    if(!mag.begin()) {
        /* There was a problem detecting the HMC5883 ... check your connections */
        Serial.println("Ooops, no HMC5883 detected ... Check your wiring!");
        while(1);
    }
    myservo.attach(12);
    /* Display some basic information on this sensor */
    displaySensorDetails();
}

void loop(void)
{
    sensors_event_t event;
    mag.getEvent(&event);
    for(int i=0;i<5;i++) {
        heading = atan2(event.magnetic.y, event.magnetic.x);
        if(heading < 0)
            heading += 2*PI;
        if(heading > 2*PI)
            heading -= 2*PI;
        headingDegrees = heading * 180/M_PI;
        headingsum+=headingDegrees;
    }
    float refangle=headingsum/5;
    Serial.print("refernce angle:  ");Serial.println(refangle);
    delay(1000);
    while(1) {
        /* Get a new sensor event */
        sensors_event_t event;
        mag.getEvent(&event);
        /* Display the results (magnetic vector values are in micro-Tesla (uT)) */
        /*Serial.print("X: "); Serial.print(event.magnetic.x); Serial.print("  ");
        Serial.print("Y: "); Serial.print(event.magnetic.y); Serial.print("  ");
        Serial.print("Z: "); Serial.print(event.magnetic.z); Serial.print("  ");Serial.println("uT");*/

        // Hold the module so that Z is pointing 'up' and you can measure the heading with x&y
        // Calculate heading when the magnetometer is level, then correct for signs of axis.
        heading = atan2(event.magnetic.y, event.magnetic.x);

        // Once you have your heading, you must then add your 'Declination Angle', which is the 'Error' of the magnetic field in your location.
        // Find yours here: http://www.magnetic-declination.com/
        // Mine is: -13* 2' W, which is ~13 Degrees, or (which we need) 0.22 radians
        // If you cannot find your Declination, comment out these two lines, your compass will be slightly off.

        // heading += declinationAngle;

        // Correct for when signs are reversed.
        if(heading < 0)
            heading += 2*PI;

        // Check for wrap due to addition of declination.
        if(heading > 2*PI)
            heading -= 2*PI;

        // Convert radians to degrees for readability.
        headingDegrees = heading * 180/M_PI;

        //Serial.print("Heading (degrees): "); Serial.println(headingDegrees);
        float finalangle=map(headingDegrees,refangle-90,refangle+90,0,180);
        finalangle=constrain(finalangle,0,180);

        Serial.print("finalangle:  ");
        Serial.println(finalangle);
        myservo.write(finalangle);
    }
}
{% endhighlight %}

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

{% highlight cpp %}
#include <IRremote.h>

// The arduino pin where the output of TSOP1738 is connected is 11
int RECV_PIN = 11;
IRrecv irrecv(RECV_PIN);
decode_results results;

void setup()
{
    Serial.begin(9600);
    irrecv.enableIRIn(); // Start the receiver
}

void loop()
{
    if (irrecv.decode(&results)) {
        Serial.println(results.value, HEX);
        irrecv.resume(); // Receive the next value
    }
}
{% endhighlight %}

The arena in the event will be publishing the information through the IR signals. We use "NEC" protocol for the transmission. This protocol tells us how to extract the binary data from the signal based on the “on” and “off” times of the signal we receive. The above library used for Arduino can understand the NEC protocol and it will do the extract the binary data and then convert it to HEX for you. But it is a very standard protocol and you can find tutorials online to use it incase you don’t use a library. 

**IR Codes**

NEC IR Code Format

The NEC message format is quite a bit more complicated then that of Sony. It is always a 32-bit code. Which consists of 16 bits of data and 16 bits of error checking. The code is divided into four 8-bit fields.

<table>
  <tr>
    <td>Device Code</td>
    <td>Device code compliment</td>
    <td>Function code</td>
    <td>Function Code Compliment</td>
  </tr>
</table>


A device code will be in the range of 0 to 255 or 256 discrete device codes. The same is true of the function code. The compliment fields are the 1’s compliment of the code they represent. The device code and the device code compliment must add up to 255 or else there is an error. The same is true of the function code and the function code compliment. 

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

{% highlight cpp %}
#include <IRremote.h>

int RECV_PIN = 11;

IRrecv irrecv(RECV_PIN);

decode_results results;

void setup()
{
    Serial.begin(9600);
    irrecv.enableIRIn(); // Start the receiver
}

void loop()
{
    if (irrecv.decode(&results)) {
        Serial.println(results.value, HEX);
        String received = String(results.value,HEX);
        int angle = decode_hex(received);
        Serial.print("angle: ");
        Serial.println(angle);
        Serial.println(encode_hex(angle));
        irrecv.resume(); // Receive the next value
    }
    delay(100);
}

int decode_hex(String input)
{
    int zeros = 8-input.length();
    for(int i=0; i<zeros; i++) {
        input = "0" + input;
    }
    String hex_data = input.substring(0,2) + input.substring(4,6);
    Serial.print("Real Hex data: ");
    Serial.println(hex_data);
    const char * c = hex_data.c_str();
    int output = (int) strtol(c, NULL, 16);
    return output;
}

String encode_hex(int input)
{
    String real_hex = String(input,HEX);
    int zeros = 4-real_hex.length();
    for(int i=0; i<zeros;i++) {
        real_hex = "0" + real_hex;
    }
    char HEXADECIMAL[17] = "0123456789abcdef";
    String final_hex = real_hex.substring(0,2);
    for(int i = 0; i<2; i++) {
        for(int j = 0; j<16; j++) {
            if(real_hex.substring(0+i,1+i) == String(HEXADECIMAL[j])) {
                final_hex += String(HEXADECIMAL[15-j]);
            }
        }
    }
    final_hex += real_hex.substring(2);
    for(int i = 0; i<2; i++) {
        for(int j = 0; j<16; j++) {
            if(real_hex.substring(2+i,3+i) == String(HEXADECIMAL[j])) {
                final_hex += String(HEXADECIMAL[15-j]);
            }
        }
    }
    return final_hex;
}
{% endhighlight %}

**Sample code for IR Transmistter**
The following is the Arduino Code to transmit encoded angle values through IR LED. This is a sample code for the IR transmitters that we would be using in the arena.

{% highlight cpp %}
#include <IRremote.h>

IRsend  irsend;

int heading = 340;

void setup()
{
  Serial.begin(9600);
}

void loop() {
  String hex = encode_hex(heading);
  Serial.println("\n\n\n");
  Serial.println(hex);

  //Write the above serial printed hex value from the serial monitor, below in the following send command. 
  irsend.sendNEC(0x00ff16e9, 32);
  
  delay(500);
}

int decode_hex(String input)
{
  int zeros = 8-input.length();
  for(int i=0; i<zeros;i++)
  {
    input = "0" + input;    
  }
  String hex_data = input.substring(0,2) + input.substring(4,6);  
  Serial.print("Real Hex data: ");
  Serial.println(hex_data); 
  const char * c = hex_data.c_str();
  int output = (int) strtol(c, NULL, 16);
  return output;
}

String encode_hex(int input)
{
  String real_hex = String(input,HEX);
  int zeros = 4-real_hex.length();
  for(int i=0; i<zeros;i++)
  {
    real_hex = "0" + real_hex;    
  }
  
  char HEXADECIMAL[17] = "0123456789abcdef";
  
  String final_hex = real_hex.substring(0,2);
  for(int i = 0; i<2; i++)
  {
    for(int j = 0; j<16; j++)
    {
      if(real_hex.substring(0+i,1+i) == String(HEXADECIMAL[j]))
      {
        final_hex += String(HEXADECIMAL[15-j]);
      }
    }
  }
  
  final_hex += real_hex.substring(2);
  
  for(int i = 0; i<2; i++)
  {
    for(int j = 0; j<16; j++)
    {
      if(real_hex.substring(2+i,3+i) == String(HEXADECIMAL[j]))
      {
        final_hex += String(HEXADECIMAL[15-j]);
      }
    }
  }
  return final_hex;
   
}
{% endhighlight %}
