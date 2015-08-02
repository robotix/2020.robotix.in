---
author: rbtxadmin
comments: true
date: 2012-12-28T12:47:47.000Z
layout: post
slug: diy-make-your-own-abyss-bot
title: 'DIY : Build your own Abyss Bot'
wordpress_id: 632
categories:
  - The Do It Yourself Series
---

# Problem Statement
Build a manually controlled robot which can descend down a rocky surface using ropes to save people (retrieve rings) and escort them to the safe zones(deposit poles). For more details on the event refer to our [website](http://robotix.in/events/event/abyss).

Before we start, here are a few videos which will help you understand the event in a better way.
- [Video](http://www.youtube.com/watch?feature=player_embedded&v=60gznNx1GUI) 1
- [Video](http://www.youtube.com/watch?feature=player_embedded&v=gi7GesmY16w) 2

# Required Material
<table align="center" > 
<tbody >
<tr >

<td >

Material

</td>

<td style="text-align: left;" >

Quantity

</td>
</tr>
<tr >

<td >Wheels
</td>

<td >2
</td>
</tr>
<tr >

<td >Castor Wheels
</td>

<td >1
</td>
</tr>
<tr >

<td >10 rpm motor
</td>

<td >2
</td>
</tr>
<tr >

<td >60/100 rpm motor
</td>

<td >2
</td>
</tr>
<tr >

<td >10 rpm high torque motor
</td>

<td >1
</td>
</tr>
<tr >

<td >Cycle brakes
</td>

<td >1
</td>
</tr>
<tr >

<td >Hook
</td>

<td >1
</td>
</tr>
<tr >

<td >Three way switches
</td>

<td >5
</td>
</tr>
</tbody>
</table>

In this DIY we will learn how to traverse on a vertical rope and make a picking mechanism.

This discussion has been divided in 4 parts:
- Locomotion
- Locomotion on vertical rope
- Collection and storing of rings
- Control box

# Locomotion
For the locomotion, different drives can be used but  the most common drive mechanism is a Differential Drive. It is the basic design of two DC motors, wheels and castor wheel.

![](https://lh3.googleusercontent.com/-LYh2GMusMhwj8DTXXhW2p-6MrApbWEmyNgscUQUT42UmRuxzrWgsMx3OaepGG5Iz5bpqniwjjToi0etgG-Q4SMdJWkyO2hQb3sexwtVlJSH24jaYnU)

For detailed information on constructing a differential drive, you may check the video tutorial[ Differential Drive](http://www.youtube.com/watch?v=kFoGBIqIqoM).

## Locomotion on Vertical Rope (Down)
For  locomotion on the vertical rope (downwards), we can have two wheels mounted on the top of the chassis with a small gap equivalent to thickness of rope between them.  Either or both the wheel can be powered by high torque low rpm high motor.

![](https://lh5.googleusercontent.com/vPCtIGTPKG03ruJamyBq5BSSqS9UP-Xpf8_4H7HMepKQ2GX0LEV2jeXdF8DnriEcNEwkZ4MthqdgynKpzprLld2yddlVle6XyIwkqXqjvGIu1ER2Tbg)

You can also use such track belt for a better grip on the rope.![](https://lh3.googleusercontent.com/yBNv4oG_10943cL7QxjrhL25wGKVGRZeZJ7Ry1P2yJg4-FfsM_L6xr5b_Q6rf4BYraIQ1y6_wImf28jQuTBv8Acl1Qio1KmyU8XvhqsWa_C9WfDw5FM)

To stop at particular point while collecting rings a gripping mechanism can be used, a simple gripping mechanism can be made using cycle brakes.

![](https://lh6.googleusercontent.com/kv5Xx8QZALykhy7Mpf8F9Q-jpwVGGHi5-Bphaw5TRVOGDO5lW144KfB1RvLKmxxl5Y23Y9xrbdRzsa5R7MbPR4gJ1ECkuDJdblGgt8Ld8jxo7hJAtdQ)

# Collection and Storing of Rings
We have used a small scale robotic arm with 2 degrees of freedom. ![](https://lh3.googleusercontent.com/-jw-BJLsG6qESxVkNROl4Ymo6Qx9HEx76SX2puSVDZ8QrSjoLz2idmM1d1zGJCXEa2V_g77Tt_r6dU_V-ONSmZ4V2toMDZSl7Nht83WIIPRXIOc90dg) For horizontal rotation of the arm we have attached one 10 rpm motor below the vertical arm.

For vertical  rotation, another 10 rpm motor between 2 parts has been attached. ![](https://lh3.googleusercontent.com/g8K-Yk_hy8o77jOENgCpPyWTENzJFZkIfDJ6BXf48HqDqlRS6AIxbHRwn0GH388dQR7VAl1wEQ5E6_KDdx78dvhRaLe4fWUFO1DoqVTKP3EXZE40lL0)

For collecting rings a hook has been attached at the end, shape of chosen hook is such, that it prevents the collected rings from falling.

```
 ![](https://lh3.googleusercontent.com/dFTKPUt2h-rC2Gp-XcZPwMqikaC08Ukigw2GRZYBmgpL-NnmHFwHFKmvV9OnJUMb6lt-zoRm87ZhT2qoqi1bBi7ltZT_VBEGJJhXxH8NCmYPkL_F6y4)
```

# Control Box
As we are using 5/6 motors we need 5/6 three way switches. ![](https://lh4.googleusercontent.com/qEDdIZF6jnijkh9GaZAFzsiZkD93fJ8g3EbzuhalFIzwsnUiYos3vzeBMQUmlpX2aP2mm04rWrsGPQhG1VjpoIXn8d017jCi6Pf_ITsUnbafiwDm0cc)

# Completed robot
![](https://lh3.googleusercontent.com/fue7-U7bC23V0dYxhuLpvJojpK_4eeY6sPUFzC9f-CncalGKhAq2FGt9tcXR07php7RiKJf8Jl07GKsODSWj8bZOYYXPEYc1nqjgGeWWyv6oY1vgKqA)

Refer to the [video tutorial](http://www.youtube.com/watch?v=VUfMAyoiL2o) for more details.

** **
