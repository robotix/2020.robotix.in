---
layout: post
title: "DC Motors"
categories:
  - auto
redirect_from: "/tutorials/category/auto/dcmotors/"
---

#### Introduction

As the name suggests, DC Motors are the one which work on DC power source. DC motors can be either continuous or stepping. In this tutorial, we will discuss the basics of a DC motor. Separate tutorials have been devoted for Servos and stepper motors.

 

#### Working

DC motors generate movement by creating magnetic fields within the motor that attract one another. By and large, DC motors have permanent magnets in the stator and the rotor has the coils.

With a continuous motor, like the ones shown, the application of power causes the shaft to rotate continually. The shaft stops only when the power is removed or if the motor is stalled.

With stepping motors, as shown, the application of power causes the shaft to rotate a few degrees, then stop.

Continuous DC Motors

 

![][1]

Stepper Motors

 

![][2]

 

#### Direction Control

DC motor has two terminals. If we apply +ve to one terminal and ground to another motor will rotate in one direction, if we reverse the connection the motor will rotate in opposite direction. If we keep both leads open or both leads ground it will not rotate (but some inertia will be there). We call it Free State. If we apply +ve voltage to both leads then braking will occurs.

         This can be easily done by establishing an H-Bridge as shown in figure.

![][3]

 

  When S1 and S4 are closed, the motor rotates in one direction. When S2 and S3 are closed, the motor moves in the opposite direction. When both terminals across motors are high, the motor is stalled.

  

| ----- |
|

Terminal 1

 |

Terminal 2

 |

State

 |
|

0

 |

1

 |

(if) Clockwise

 |
|

1

 |

0

 |

(then) Anti-clockwise

 |
|

1

 |

1

 |

Breaking Condition

 |
|

0

 |

0

 |

Free run

 |

This can be done by using a simple a DPDT as shown in figure 1. However, breaking condition isn't achievable here. L293D is an IC containing 2 H-Bridges. This IC can be used to control motion of motor via microcontroller.

 

![][4]

 

 

![][5]

 

 

 

Here's a pictorial representation of how the connections take place in a DPDT.

Connection B-A-D-E runs the motor in one direction and connection B-C-F-E runs it in the opposite direction.

 

#### Speed Variation

There are mainly two ways of controlling speed of DC motor :

1\. Varying the supply voltage

2\. Pulse width modulation (PWM)

         First method is by varying the supply voltage, ie voltage across the motor. But this method affects the power output by lowering it.  And also,  this is a somewhat a tough task because we mostly microcontrollers to vary the supply voltage and to generate variable supply voltage we should go for analog circuit, then come analog to digital conversion and other steps which makes the task tedious. Hence it is not a feasible option.

        

The second method is to do it via PWM. The function of the H-bridge can be enhanced by using PWM to control the speed of the motor. The PWM signal is illustrated in Figure shown. When the PWM signal is high, the motor is on; when low, the motor is off. A duty cycle is given by percentage ratio of T-on and total time. The greater the on time, greater the duty cycle, the higher the average voltage and greater is the speed. For example, if you apply a PWM of 50% duty cycle to a 100 RPM motor, it would run at 50 RPM(50% of 100 RPM).

 

![][6]

 

 

Pulse Width Modulation

PWM can be generated using IC555 or using microcontroller or computer parallel port.

 

#### Gear box

Gears perform two important duties. First, they can make the number of revolutions

applied to one gear greater or lesser than the number of revolutions of another gear that is

connected to it. As in, they can be used to alter the speed of rotation. They also increase or decrease torque, depending on how the gears are oriented.

    When a gear box of reduction ratio 1000:1 is attached to a DC motor of 8000 RPM, the output rotation speed of the motor is 8000/1000=8 RPM.

 

![][7]

 

 

Motor with gearbox attached

 

#### Brushless DC motors

Brush motors are generally inexpensive and reliable. They also offer simple two-wire control and require fairly simple control or no control at all in fixed-speed designs. Although, if high torque is required, brush motors fall a bit flat. As speed increases, brush friction increases and viable torque decreases.

           Brushless motors beat brush motors in the speed/torque trade-off with their ability to maintain or increase torque at various speeds. Importantly, there's no power loss across brushes, making the components significantly more efficient. However, brushless motors have a higher cost of construction. They also require control strategies that can be both complex and expensive.

 

[1]: https://lh5.googleusercontent.com/maXuvdayH5ILTD8yDv6zK6XQVq98hvwxwAYqKITs47aeCjOyJMJMqqdMWbBu9odfkQBu2aSpCAZoB6OdK1JOWW_KNgGa6ZR5REdzW_d1rFwHAZKQo8Zk2fEN
[2]: https://lh6.googleusercontent.com/ujwpZa1SdLoQ9cEcz3pPMRKTzO4YCEAFCxQ9G0FVhIART9HHLfa-98gsgc10Y8AhSZlq9bXGWR1M2P364Oc7Ju99OZ7eBjmhEjcYXcU2p5BhxYOPcZa6NYFm
[3]: https://lh3.googleusercontent.com/POr8gkS9_UaRqcJGNTZHSmvyzL2-9lfLbYU37LbKZaw_T9ryPH2iBC0kHN1h1U1pLBRHdtZWGoAy-Zzq7FSh89IF-mRRWm5g3dNLbesErvO6MPu7RosM5Vfx
[4]: https://lh3.googleusercontent.com/p3xnEgLlFbquZkj0NPzLjnZERbsvFwAUbWP-VGAY-vuyTmmKV2-DLstjS33Jwc6CWnNpoiM5QKpwkIP45b5laNpezHsFeASejpb4b3hOLnKrH14ZOC-cyKKx
[5]: https://lh3.googleusercontent.com/nVemPMktPFiJ_VfJhN4FyQM5cnfIw1M30V6kGzXhRlfrKDDHl0lV-ALO90BSTADNGgUKjpSF8oQNKu-UxS8hCDMy11JBKOAu2s8j2uX7AQ1E7y500X7g3CFU
[6]: https://lh3.googleusercontent.com/f-SeEh3Sp5En-7nyRKz30V_f8lp9DcBp9YdzoiEh3HHRZX_KfR5k1phRdzaDyx1fTxWIEbEqEXJqd_2AV9WrtD0IN8jbHu6iJHct3-p4VKrRRhKMo9q_F2gB
[7]: https://lh3.googleusercontent.com/yfI3jV765yHoRsaURlx9egD1QHJZ3Nrhi8KcqnPVT-Q6vRCI21EsVQReRo2gqxdA0c9KdpICN7zNxIXoduIhYId6UJHuj6jaoNCDLtCvfRGoGlPHJnW3mb7y
