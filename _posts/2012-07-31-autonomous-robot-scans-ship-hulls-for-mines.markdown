---
author: rbtxadmin
comments: false
date: 2012-07-31T18:09:36.000Z
layout: post
slug: autonomous-robot-scans-ship-hulls-for-mines
title: Autonomous robot scans ship hulls for mines
wordpress_id: 324
categories:
  - Around the World
---

**Algorithms enable robot to navigate and view propellers and other complex structures.**

![](http://img.mit.edu/newsoffice/images/article_images/original/20120716153856-1.png)

For years, the U.S. Navy has employed human divers, equipped with sonar cameras, to search for underwater mines attached to ship hulls. The Navy has also trained dolphins and sea lions to search for bombs on and around vessels. While animals can cover a large area in a short amount of time, they are costly to train and care for, and don't always perform as expected.

In the last few years, Navy scientists, along with research institutions around the world, have been engineering resilient robots for minesweeping and other risky underwater missions. The ultimate goal is to design completely autonomous robots that can navigate and map cloudy underwater environments -- without any prior knowledge of those environments -- and detect mines as small as an iPod.

Now Franz Hover, the Finmeccanica Career Development Associate Professor in the Department of Mechanical Engineering, and graduate student Brendan Englot have designed algorithms that vastly improve such robots' navigation and feature-detecting capabilities. Using the group's algorithms, the robot is able to swim around a ship's hull and view complex structures such as propellers and shafts. The goal is to achieve a resolution fine enough to detect a 10-centimeter mine attached to the side of a ship.

"A mine this small may not sink the vessel or cause loss of life, but if it bends the shaft, or damages the bearing, you still have a big problem," Hover says. "The ability to ensure that the bottom of the boat doesn't have a mine attached to it is really critical to vessel security today."

Hover and his colleagues have detailed their approach in a paper to appear in the_International Journal of Robotics Research_.

**Seeing a shape in the dots**

The engineering of such an inspection is a thorny computational problem that Hover and his group have investigated for the last decade. The researchers are coming up with algorithms to program a robot called the Hovering Autonomous Underwater Vehicle (HAUV), originally developed as part of [MIT's Sea Grant](http://seagrant.mit.edu/) program. The technology has since been commercialized by spinoff [Bluefin Robotics Corp.](http://www.bluefinrobotics.com/), and the MIT engineers have continued to work to improve its performance through the years.

Fully viewing a massive structure such as a naval combat vessel -- as well as all its small features, including bolts, struts and any small mines -- is a tricky planning problem, according to Hover.

"It's not enough to just view it from a safe distance," Hover says. "The vehicle has to go in and fly through the propellers and the rudders, trying to sweep everything, usually with short-range sensors that have a limited field of view."

The group approached the challenge in two stages. For the first stage, the researchers programmed the robot to approach the ship's hull from a safe 10-meter distance, swimming in a square around the structure. The vehicle's sonar camera emits signals that boomerang back as the robot makes its way around the ship; the researchers process the sonar signals into a grainy point cloud. At such a low resolution, Hover says one can clearly make out a ship's large propeller, though not an iPod-sized mine.

"We get an immense point cloud," Hover says. "And believe it or not, we see the shape of the ship's structures emerge."

However, Hover describes the point cloud as a "mist" that doesn't necessarily tell a robot where a ship's structures begin and end -- crucial information for the robot to avoid colliding with a ship's propellers. To translate this "mist" into a solid structure, the researchers adapted computer-graphics algorithms to their sonar data, generating a three-dimensional, "watertight" mesh model.

**Up close and mine-able**

For the second stage of their approach, the researchers programmed the robot to swim closer to the ship, navigating around the structure based on the mesh model. The idea, Hover says, is for the robot to cover every point in the mesh; in this case, each point is spaced 10 centimeters apart, narrow enough to detect a small mine.

One approach, he says, might be to have the robot sweep over the structure much like one would mow a lawn, one strip at a time -- a common technique in robotic inspection. But such rectangular surveys can be tedious and time-consuming. Instead, the researchers came up with a more efficient approach, using optimization algorithms to program the robot to sweep across the structures while taking into account their complicated 3-D shapes.

The group's technique significantly shortens the path a robot needs to follow to view an entire ship. "Over a minute or two of computation, we're able to make tremendous improvements to the length of this path, and do so while keeping every single point in view," Englot says.

Gaurav Sukhatme, a professor of computer science at the University of Southern California who was not involved in this work, sees the group's work as an integrated approach to multiple problems, including "the extraordinary amount of data the vehicle has to intelligently process, and the safety considerations when operating near a hull that is being imaged or examined. I think a big application is going to be in servicing existing underwater rigs, and in decommissioning rigs no longer slated for use," Sukhatme says.

The team has tested its algorithms in the field, creating underwater models of two vessels: the Curtiss, a 183-meter military support ship in San Diego, and the Seneca, an 82-meter cutter in Boston. The group is performing tests this month in Boston Harbor.

"The goal is to be competitive with divers in speed and efficiency, covering every square inch of a ship," Englot says. "We think we're close." This research is supported by the Office of Naval Research.
