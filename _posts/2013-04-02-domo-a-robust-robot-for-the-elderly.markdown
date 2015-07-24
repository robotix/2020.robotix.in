---
author: rbtxadmin
comments: true
date: 2013-04-02T13:17:09.000Z
layout: post
slug: domo-a-robust-robot-for-the-elderly
title: DOMO - A Robust Robot for the Elderly
wordpress_id: 806
categories:
  - Around the World
---

[![](http://i1-news.softpedia-static.com/images/news2/The-First-Human-Eyed-Robot-Ever-2.jpg)](http://i1-news.softpedia-static.com/images/news2/The-First-Human-Eyed-Robot-Ever-2.jpg)

For more than a decade, roboticists have worked on systems for the elderly, hoping to extend the amount of time that seniors can live at home and improve their quality of life. Now MIT researchers have built a humanoid robot with a special motion-tracking system and spring-loaded actuators that make it better equipped to deal with household chores. The robot, named Domo, can size up an object by shaking it in its hand and then put it away in a cupboard.

"Demographics are changing, particularly in Japan, Europe, and the U.S.," says Aaron Edsinger, a lead researcher on the Domo project and a postdoctoral student at MIT's computer-science and artificial-intelligence lab. "There are a lot of people that are getting older and not a lot of young people to take care of them."

But developing a multipurpose robot for the elderly hasn't been easy because the home environment is so unpredictable. Industrial robots, which are widely used in manufacturing, work with parts that come in standard shapes and sizes. Food, however, does not. So a simple task such as putting away groceries can become quite complicated.

Domo takes that variability into account. Instead of preprogramming the robot so that it only knows how to deal with cans and boxes with certain dimensions, Edsinger has Domo size up each item–one at a time–before deciding how it should be stored.

The shelving process begins when a human puts an item in one of the robot's hands. The robot then determines the object's dimensions based on grip and video analysis. First, the robot wiggles the object in its hand while video cameras in the robot's head record the movement. The robot knows how much force it applied with the wiggle, so it knows how much the object it's holding should move. Using special motion-capture software, Domo finds the object in the video that moves as predicted and assumes it is the item in its hand.

Now that the robot has identified the item to be shelved, Domo must determine its shape and size. If it's a small object that fits in the robot's hand, it can determine the object's size based on its grip. For long objects, the robot must perform more video analysis.

[![](http://img.mit.edu/newsoffice/images/article_images/200908311112514822.jpg)](http://img.mit.edu/newsoffice/images/article_images/200908311112514822.jpg)

Knowing that the tip of a long object will wiggle quicker than the rest, the software isolates the part of the object moving the fastest and considers it to be the point farthest away from the robot's hand. Once the robot knows the object's dimensions, it can determine how best to place it in the cupboard. "If it's a pack of spaghetti, it will lay it on its side instead of trying to stand it upright," Edsinger says.

This might seem like a trivial task, but that's largely because humans tend to underestimate the complexity of their daily activities. Identifying and placing objects requires a lot of different processes. The beauty of Domo is that it's a very integrated system and can handle many processes at once. That's why Domo can handle the unexpected; the same algorithm that works for a water bottle will work for a box of spaghetti.

Domo can also perform basic insertion tasks, such as placing a spoon in a bowl, and help with tidying up the house by carrying around a box in which the human can put clutter. "I can hand it a box of any size, and it can hold it between its two hands, track me, and keep the box nearby," Edsinger says.

Domo, which was created for research purposes, will probably never make it onto store shelves–or into anyone's kitchen. But the research that goes into Domo will likely be used by other roboticists in their quest to create the ideal domestic robot. For example, a robot's ability to find the tip of an object is extremely helpful for scientists developing robots that can work with household tools.

Illah Nourbakhsh, a robotics professor at Carnegie Mellon University, is impressed with the special springs incorporated into Domo's actuators. These springs, known as series elastic actuators, can be found in 22 of the robot's 29 joints. The actuators let the robot know how much force is applied by an external object and act as shock absorbers if the robot hits something. By making the system tolerant to bumps, it's safer for both the robot and the human. "In a car assembly plant, you have sensors around the robots so people can never get near them," Nourbakhsh says. But with a home-care robot, the situation is quite different: one wants the human and the robot to be able to work in close quarters.

However, whether a humanoid machine remains the best robotic solution to elder care remains controversial. Sebastian Thrun, director of Stanford's artificial-intelligence lab, questions whether it's necessary for the robot to resemble a human. "It's a great project, but by going to a humanoid form, the problem becomes harder than it needs to be," Thurn says. A robot arm mounted to a cabinet might be a simpler solution to the grocery problem, for example.

Nourbakhsh agrees. "The problem is [that] making a general-purpose robot with a human form is extremely expensive," he says. If the humanoid is mobile, then power requirements also become a problem. Nourbakhsh says that existing batteries don't run for long enough to handle routine housework. He says he envisions a future elder-care system in which the robots are incorporated into standard appliances, such as stoves and refrigerators, so that they "disappear into the world around you."
