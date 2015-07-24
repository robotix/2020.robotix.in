---
author: rbtxadmin
comments: true
date: 2014-07-01T09:23:51.000Z
layout: post
slug: robot-responds-to-natural-language-instructions
title: Robot Responds to Natural Language Instructions
wordpress_id: 1407
categories:
  - Around the World
---

![](http://spectrum.ieee.org/img/pr2-scoops-ice-cream-1403788040725.png)

It's possible, even probable, that if you're reading this article, you either know how to program a robot or could figure it out if you really put your mind to it. But for the rest (indeed for most people), programming is not necessarily a skill that they have at their fingertips. And even if you're comfortable with writing code in general, writing code that gets a very complicated and expensive robot to do exactly what you want it to do is (to put it mildly) not easy.

The way robots are _supposed_ to work (if we believe every science fictions show ever, which we do) is that they can listen to you yell at them, understand what you're on about, and then follow the instructions that they've been given just as well as a human can. "As well as a human can" means understanding abstract concepts and making inferences when necessary, which is something that robots, as a rule, are absolutely terrible at.

Robots like to have detailed instructions about everything: if you want a scoop of ice cream, they need to know what ice cream is, where it is, how to open it, what to scoop it out with, how to grip the scoop, how to perform the scooping action, how to verify that the scoop was successful, how to get the ice cream from the scoop into a--oh wait, we forgot about the bowl, the robot has to have all the bowl stuff figured out in advance.

And there's the problem: "get me a scoop of ice cream" is actually an _incredibly_ complicated chain of actions that need to be executed in just the right way, and no human has the patience to spell it all out like a robot would want.

Cornell is trying to fix this problem by teaching robots to interpret natural language instructions, even casual ones, so that a PR2 can bring you some fancy ice cream.

Most robots would panic given instructions that vague, but the special sauce that Ashutosh Saxena's Robot Learning Lab has developed enables the PR2 to make logical inferences about missing steps or poor instructions. From the press release:
<blockquote>_Saxena's robot, equipped with a 3-D camera, scans its environment and identifies the objects in it, using computer vision software previously developed in Saxena's lab. The robot has been trained to associate objects with their capabilities: A pan can be poured into or poured from; stoves can have other objects set on them, and can heat things. So the robot can identify the pan, locate the water faucet and stove and incorporate that information into its procedure. If you tell it to "heat water" it can use the stove or the microwave, depending on which is available. And it can carry out the same actions tomorrow if you've moved the pan, or even moved the robot to a different kitchen._

_Other workers have attacked these problems by giving a robot a set of templates for common actions and chewing up sentences one word at a time. Saxena's research group uses techniques computer scientists call "machine learning" to train the robot's computer brain to associate entire commands with flexibly defined actions. The computer is fed animated video simulations of the action –- created by humans in a process similar to playing a video game – accompanied by recorded voice commands from several different speakers._

_The computer stores the combination of many similar commands as a flexible pattern that can match many variations, so when it hears "Take the pot to the stove," "Carry the pot to the stove," "Put the pot on the stove," "Go to the stove and heat the pot" and so on, it calculates the probability of a match with what it has heard before, and if the probability is high enough, it declares a match. A similarly fuzzy version of the video simulation supplies a plan for the action: Wherever the sink and the stove are, the path can be matched to the recorded action of carrying the pot of water from one to the other._</blockquote>

With variations in the environment and command structure, the PR2 was able to make ice cream and ramen that didn't suck about 64 percent of the time, which is " three to four times better than previous methods." So, not bad, and it'll improve as the robot gains more experience, which one can help it do through a crowdsourced simulation game.

Capabilities like this are absolutely necessary for home robots that are usable by people who have no idea how to use a robot, but there's another layer here that's arguably just as complicated. The robot can understand relatively abstract (in a programming sense) commands like "add ice cream to a bowl," but even if the robot knows to go find a bowl and some ice cream, it also needs to know what a "bowl" and "ice cream" are in the first place (as well as what "add" means in terms of size). This is especially tricky if the robot is entering an environment where it's never been before, or if you buy some crazy gourmet ice cream that doesn't come in a gallon-sized bucket.

Solving these problems isn't the point of this research, of course, but it's worth considering the steps that are necessary for end-to-end user-friendly in-home ice cream service by a $400,000 robot. And there are many ways in which these problems _can_ be solved: using natural spoken language interfaces for the initial training of a robot is one option, where you'd show it a bowl and say, "hey robot, this is a bowl for ice cream, got it?" Another option is to use the cloud to access a database of bowls, and/or semantic mapping to perform a search for bowl-like objects.

What's exciting about this is how you can see research building towards a point where robots that fundamentally understand humans, and can act on that understanding, will be ready to come into our homes and reliably do stuff that's actually useful without requiring supervision, micromanagement, tech support, or therapy.
