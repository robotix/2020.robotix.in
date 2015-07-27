---
author: rbtxadmin
comments: true
date: 2014-06-03T06:59:08.000Z
layout: post
slug: heres-that-extra-pair-of-robot-arms-youve-always-wanted
title: "Here's That Extra Pair of Robot Arms You've Always Wanted"
wordpress_id: 1392
---

[![sra-mit-shoulder-robot-arm-icra-img1-1401715150100]({{ site.baseurl }}/img/blog/2014/06/sra-mit-shoulder-robot-arm-icra-img1-1401715150100.png)]({{ site.baseurl }}/img/blog/2014/06/sra-mit-shoulder-robot-arm-icra-img1-1401715150100.png)

Supernumerary Robotic Limbs (SRLs) are robotic limbs that, when worn, give you more limbs than you'd normally have. In other words, they're not robotic limbs designed to replace biological limbs that you might be missing, but rather robotic limbs designed to augment the number of limbs that you have already.

MIT researchers have been developing SRLs that can help you do stuff that would be annoying, uncomfortable, or impossible to do on your own. At the IEEE International Conference on Robotics and Automation (ICRA) in Hong Kong, they presented their latest SRL prototypes, with one model featuring a pair of limbs that spring from your shoulders and another with limbs that extend from your waist.

MIT's shoulder-mounted SRL is designed to assist in tasks that take place over your head, or in situations where your other two arms are busy and you need a hand (literally) with something. One example, shown in the second video below, would be in a construction context, where anything that needs to be attached to a ceiling has to be held up and hammered or screwed into place at the same time.

Another example (that's probably a bit more common for most of us) is trying to open a door when you're holding something with both hands.

![](http://spectrum.ieee.org/img/srl-img4-1401721722159.png)

The SRL shoulder robot uses two arms mounted on your shoulders such that the reaction forces on them are aligned with the spine. Each arm has five degrees of freedom, with interchangeable and customizable end effectors, and the complete systems weighs about 4.5 kilograms (10 pounds).

What's tricky about having a pair of shoulder arms is getting them to do what they're supposed to do without having to control them with your other arms, which would kind of defeat the purpose of the entire setup. Instead, the SRL watches what you're doing with your arms to decide how to move. It does that by monitoring two inertial measurement units (IMUs) that the user wears on the wrists. A third IMU sits at the base of the robot's shoulder mount, to track the overall orientation and motion of the SRL.

The SRL uses the gyro and accelerometer data from the IMUs to make a prediction (based on a model that's been created by demonstration learning) about what would be the most helpful, proactive position for its own arms. If you put your arms up above your head, for example, the SRLs raise above your head too, because it figures you're trying to hold something up. Using their SRL prototype, the researchers are testing different "behavioral modes" to program the limbs to do what they want.

"Once we combine the most significant behavioral modes we are able to control the robot such that, from the wearer's perspective, it behaves like an extension of his own body," says Baldin Llorens-Bonilla, a researcher at the d'Arbeloff Laboratory at MIT.

![](http://spectrum.ieee.org/img/srl-robot-arms-waist-1401717539211.png)In addition to these extra shoulder arms, other researchers at the d'Arbeloff Lab, led by Professor Harry Asada, are constructing waist arms that can be used for holding objects as well as for bracing the user, much like an extra pair of legs [see concept, right].

Much of this research was sponsored by Boeing, which is interested in finding ways to keep its aging human workforce of aircraft builders from getting injured by repeatedly lifting heavy things, stooping, or crouching repeatedly over long periods of time. The waist-mounted SRLs can be used as two extra arms, two extra legs, or one of each, if that's what would work best. The example below shows SRLs being used to brace a worker as he drills a hole in an airframe:

![](http://spectrum.ieee.org/img/srl-img2-1401720009265.png)

And the illustration below shows how SRLs can be positioned to support the bodyweight of the user:

![](http://spectrum.ieee.org/img/srl-img3-1401720030411.png)

So why not just go straight to a full-body exoskeleton instead of just additional arms? The researchers say that the constraint of an exoskeleton is that by definition it's bound to the body of the user: no matter what the most advantageous orientation for your limbs might be, the exoskeleton is putting all of its force wherever you decide to put your arms and legs. Having limbs that are powered yet completely separate gives the system many more option for helping you out.

And of course, it's the best way to improve your ski-boxing.

"A Robot on the Shoulder: Coordinated Human-Wearable Robot Control using Coloured Petri Nets and Partial Least Squares Predictions," by Baldin Llorens-Bonilla and H. Harry Asada from MIT, was presented at ICRA 2014 in Hong Kong. Additional papers presented on this topic presented at ICRA include "Bracing the Human Body with Supernumerary Robotic Limbs for Physical Assistance and Load Reduction," by Federico Parietti, Kameron Chan, and H. Harry Asada, and "Supernumerary Robotic Limbs for Aircraft Fuselage Assembly: Body Stabilization and Guidance by Bracing," by Federico Parietti and H. Harry Asada.
