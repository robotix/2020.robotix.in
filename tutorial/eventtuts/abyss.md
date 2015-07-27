# Tutorials

#### Introduction

Let us see the basic problem statement :  
**"Build a manually controlled robot which can descend a well-like arena with the help of ropes, save people (retrieve rings) and climb up, taking the people to the safe zone."**

In effect, your robot needs to have the following abilities:  
→ Locomotion on rope  
→ Locomotion on wall  
→ Locomotion+Clasping  
→ Drive Mechanisms for Locomotion on sand  
→ Collection+Storing  
→Power  
→Additional Resources

Before we start, here are a few videos which will help you understand the tutorial in a better way.

**                                                                 "Keep it simple and sturdy"**

**How this Tutorial works :**This is not a step - by - step "How To Make a Rope traversing bot" tutorial but a guide for an enthusiast like you to explore your own imagination and make the ultimate HERObot. The tutorial lists out all the skills that the event requires your bot to have and tells you exactly how you can implement each of them. Look out for the words in blue because they will lead you to external pages which show exactly how to build that particular mechanism. And finally, find our 'Tips' to gather up all your mechanisms onto the drive base and build a winning robot!  
In case you have specific doubts you need answered, we have a[ Forum][1] where we'd love to hear from you.

#### Locomotion on Rope

Backbone solution of the given problem statement is to make a robot that can traverse the given rope in vertical direction(up/down).

![][2]![][3]

In the above we may pass the rope through the bot and wind it around the wheels to increase the friction. Further Coordinated to and fro motion of Motors (low rpm) can be used to move the bot up and down on the rope.

While Traversing on the rope bot has to stop at checkpoints to collect the rings, it may so happen that even after motors are stopped the bot may slip due to lack of proper friction. For that a simple braking system is required.![][4]

This mechanism can be easily made using cycle brakes and thin plastic or pvc pipes.  
Rope can be made to pass by the plastic pipe and plastic pipe can be connected to the cycle brakes. Brakes can be applied whenever bot needs stability while traversing on the rope.

[1]: http://www.robotix.in/www.robotix.in/forum
[2]: https://lh4.googleusercontent.com/1eara9xOA-J7I45KIq9MlYwCjfnDPwmgR4uSsuf7H1lp_yrHXKuZhJO8GookWBqB-OTHBjUJ4OTycS0Xvvvp2lsy8yDBEYit9TULC3dfeHG7XqN3bKk
[3]: https://lh5.googleusercontent.com/XgUoNTK8ZsCxVOgqz29kSGzqDdFsHOTM5vkgaOtW0mcT45bw4TPU0dsEY4JzY5uqTZaVU_Pp07LSLVPJXyk-NWxo1Drxq5X8KvDvMbF7AcJ94f3AFoM
[4]: https://lh5.googleusercontent.com/B_AG00R4WInJuifd6WxX284Zchg4XMzocYwHkN_oXrr-1OGSY-btKMuyPpNvvbJsPkaQmwlRfYTHNcySNZE4U2WrecV2NqtXITXNXA8TdWJRzunBYYQ
