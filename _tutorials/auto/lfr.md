---
layout: post
title: "Line Follower"
categories:
  - auto
redirect_from: "/tutorials/category/auto/lfr/"
---

#### Introduction

A line follower robot basically follows line by differentiating whether it is running on a white or black surface. You can either make your robot follow a black line on a white surface or a white line on a black surface.

#### Sensor Circuit

This circuit helps the line follower robot to distinguish the white line from the black surface and vice-versa. The sensors used here is the LED-LDR sensor.

![][1]

LDR: Light Dependent Resistor

               The resistance of LDR varies with intensity of light. Resistance is inversely proportional to the intensity of light i.e. more the light, lesser the resistance.

 

![][2]

LED: Light Emitting Diode

               LED acts as a source of light. This is used in combination with the LDR to form the sensor circuit.

In the sensor circuit, LED and LDR are place side by side. The LED light reflected by the surface before falls on the LDR. If, it's a white surface, LED light reflected will be more and hence, there'll be more light intensity on the LDR. And when it's dark, the LED light reflected by the surface will be lesser and hence lesser light intensity on the LDR.

Hence and LED-LDR pair can be used to check whether it is on a black surface or white surface.

Line following can be done with varying no. of sensors. In this tutorial, we'll be working on a 3 sensor line follower.

  
CIRCUIT:

![][3]

The resistor in series with LDR (R2 here) is (RDRL) ^½ where RD is the approximate resistance of LDR in dark RL is the approximate resistance of LDR in light. This value is taken in order to obtain a wide analog range between the dark and light conditions. You can derive value by solving for maximum difference between VD and VL. VD is the voltage reading at dark and VL is the reading at light.

 

** When you make the sensor circuit, the position of the sensors should be appropriate in accordance to the width of line you want to make it follow and the position of sensors accordingly.

**the circuit, we cover the sides of the LED to ensure that the light falling on the LDR is the reflected light only and not the side wise scattered light, like in the picture shown below.

 

![][4]

#### Converting sensor data

Now, our next step is to convert the sensor data into a signal that can be understood by the mucrocontroller (uC).

USING COMPARATOR:

![][5]

Here, V+ measures the voltage across R2.

When dark –

RLDR more, VLDR more......VR2 less.......... [V+ (VD) < V-]......... Vo/p=0 (ground-low=0)

When light –

RLDR less, VLDR less ….......VR2 more........ [V+ (VL) > V-]..........Vo/p = VCC (high=1)

Where, V- is constant such that, VD <V- <VL. This V- is the threshold voltage that we set by adjusting the POT. The POT voltage must be set for each of the LED-LDR pair you have in your line follower.

 

 

USING ADC:

Here, we directly deal with the analog readings we get from the LED-LDR circuit. We compare the analog values with the threshold in the code to decide whether the LED is on a black line or white.

 

 

 

#### Microcontroller interpretation

 

| ----- |
|

Sensor 0

 |

Sensor 1

 |

Sensor 2

 |

Action

 |
|

1

 |

0

 |

1

 |

Forward

 |
|

0

 |

1

 |

1

 |

Left

 |
|

1

 |

1

 |

0

 |

Right

 |
|

0

 |

0

 |

1

 |

Left

 |
|

1

 |

0

 |

0

 |

Right

 |

  
 

** Assumption : 0 - Dark state, 1 - Light state

These are few basic conditions of movement as per the sensor states. You can work out on more situations and decide the movement of the bot accordingly. In your code, you just have to introduce these if and else conditions and give the corresponding motor states accordingly.

if ((s[0]==1)&&(s[1]==0)&&(s[2]==1)) //s1 on black line and other 2 on white

      PORTC=0b00001010;

//PC0,PC1,PC2,PC3 connected to the motordriver circuit. Signals for the motor to run forward.

 

#### Code

//Code with ADC used.

#define F_CPU 16000000UL

#include

#include

#define left 0b11110100

#define right 0b10111100

#define fwd 0b10110100

#define back 0b11011000

 

int main(void)

{

      int i, s[3], t0=50, t1=60, t2=80;

  //t0, t1, t2 the corresponding threshold voltage in adc terms of sensor 0,1,2.

//s[3] is an array which will store sensor after adc values of each led-ldr sensor pair

      DDRA=0;

      //Declaring Port A as input, 3 sensor inputs at PA0, PA1, PA2

     

      DDRC=255;

      //Declaring port C as output, this output goes to the motordriver circuit.

     

      ADCSRA|=(1< |(1< |(1<);))|(1

      // Enabled ADC and set prescaler to 128

 

      ADMUX|=(0<)|(1

      //Vref is same as Vcc, and Setting ADLAR to 1 left shifts the bits for an 8-bit precision

     

      while(1)

      {

             ADMUX|=(0< //setting the MUX bits to PA0)|(0

             for (i=0;i<=2;i++)

             {      ADCSRA|=(1<);

                    //Start ADC

                   

                    while((ADCSRA& (1<<6))!=0);

                    //Do nothing till the conversion is over.

                   

                    s[i] = ADCH;

                    //The ADC value stored in ADCH has stored to s[i]

 

                    ADMUX++; //Changing MUX bits PA0 -> PA1 -> PA2

             }

//Comparing the ADC values with the threshold values and accordingly assigning 0 and 1 to light and drk conditions respectively.

             if (s[0]>t0)

                    s[0]=1;

             else

                    s[0]=0;

            

             if (s[1]>t1)

                    s[1]=1;

             else

                    s[1]=0;

                   

             if (s[2]>t2)

                    s[2]=1;

             else

                    s[2]=0;

//Comparing values. Just framing the algorithm table into if-else conditions.

 

if ((s[0]==1)&&(s[1]==0)&&(s[2]==1)) //s1 on black line and other 2 on white

      PORTC=fwd;

else

{

    if ((s[0]==0)&&(s[1]==1)&&(s[2]==1)) //s0 on black line and other 2 on white

 

                PORTC=left;

            }

else

{

    if ((s[0]==1)&&(s[1]==1)&&(s[2]==0)) //s2 on black line and other 2 on white

                PORTC=right;

             }   

_delay_ms(200);

      };

}

 

 

#### Motor Driver

The output from the microcontroller goes to the motordriver circuit. The circuit is connected to the motors. The uC sends signals to this circuit which governs the motion of the Motors and hence the Robot.

To make the motor driver circuit, refer to the motor driver tutorial. The output of the Uc wil be connected to this motor driver circuit.

 

#### Assembly

You now have:

1\.       Sensor circuit with 3 sensors.

2\.       Comparator circuit which takes in input from sensor circuit, compares with POT threshold and gives 1 and 0 for dark and light states.

3\.       A motor driver circuit.

4\.       Microcontroller

This is how our connections will be:

 

![][6]

If you're doing it with ADC, you'll directly connect the sensor circuit outputs with the uC and make changes in the code accordingly.

Go ahead, assemble, code, burn! your line follower is ready to go!

 

[1]: https://lh3.googleusercontent.com/Jx15IBfEohdGlV5TnrVyOfQycd4ETMIpktx98jRQbkW4FJnPQkMiWnCHOcJxZNzvMgoprj8aQHBNsUfdxxbn55qxXdi3HiKJeJR7lUq6W-wopGfhigakZtFn
[2]: https://lh3.googleusercontent.com/RpQXniInH__SYpIIjLBGwSfV3bGu9PMOCPL6YN9U745KUvzrYJ19KP3TpgYPRL9itRfq82BycX14RAbmaXIzR-aZH78b4ieoOthgmw-0a27wCeraOLnUTxCk
[3]: https://lh3.googleusercontent.com/AI3k4dwdBP3lgctsGuDoXOw2GNWDz8_qT0mGAw6iN2oNHfXWo0QpJLvT3vBxVKmmlhayUOlBTDHmD59v2YmtoAOiZt2WK54GdAbIG9zXHCWQeN-1qGzUfF9a
[4]: https://lh4.googleusercontent.com/CCHgqQ53musboRciwh0lx9YkweH-BonrZ-LOECgpK_wNqv6wRUaCr_vp6c3wJ8tlT7jY__WZaLiMZdFAHrvl7ekhZo8f1qftrP7dWHWf8eRe7j0SEwHILzIL
[5]: https://lh6.googleusercontent.com/OQvDk0xsTxz1NAD8hWo-1GvTznJSoZIzPoGDxtZkVRGYBQoFtI40Oo1OEzFzJjFt0ucOpGAxKnwNSNn_e6yNk3YVyLkGGdWme7GmmsSBaoAC0EgmQFycZ65o
[6]: https://lh3.googleusercontent.com/8DYv_kcOIAL0qDc1ZwN-fKfsBBv4NKkaAiFTTPaICVNsxqITiCZfHwCRRMwFqMJzkvOj_FyVPgRr3MD8NUFIbp5TP5ut3KXVOUdS-qcytR6nYlz0Dj4YdJNu
