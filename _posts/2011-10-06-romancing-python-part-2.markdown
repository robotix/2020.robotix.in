---
author: robotixiitkgp
comments: true
date: 2011-10-06T13:45:53.000Z
layout: post
slug: romancing-python-part-2
title: 'Romancing Python : Part 2'
wordpress_id: 240
categories:
  - The Do It Yourself Series
---

In this and a series of following articles, we take you through brief comparisons between programming languages concentrate on language issues only so you can figure out which one is best for your use. In practice, the choice of a programming language is often dictated by other real-world constraints such as cost, availability, training, and prior investment, or even emotional attachment. Since these aspects are highly variable, it seems a waste of time to consider them much for this comparison.

# Python VS Java
[![]({{ site.baseurl }}/img/blog/2011/10/python-vs-java-726367-copy.jpg?w=300)]({{ site.baseurl }}/img/blog/2011/10/python-vs-java-726367-copy.jpg)Python programs are generally expected to run slower than Java programs, but they also take much less time to develop. Python programs are typically 3-5 times shorter than equivalent Java programs. This difference can be attributed to Python's built-in high-level data types and its dynamic typing. For example, a Python programmer wastes no time declaring the types of arguments or variables, and Python's powerful polymorphic list and dictionary types, for which rich syntactic support is built straight into the language, find a use in almost every Python program. Because of the run-time typing, Python's run time must work harder than Java's. For example, when evaluating the expression a+b, it must first inspect the objects a and b to find out their type, which is not known at compile time. It then invokes the appropriate addition operation, which may be an overloaded user-defined method. Java, on the other hand, can perform an efficient integer or floating point addition, but requires variable declarations for a and b, and does not allow overloading of the + operator for instances of user-defined classes. For these reasons, Python is much better suited as a "glue" language, while Java is better characterized as a low-level implementation language. In fact, the two together make an excellent combination. Components can be developed in Java and combined to form applications in Python; Python can also be used to prototype components until their design can be "hardened" in a Java implementation. To support this type of development, a Python implementation written in Java is under development, which allows calling Python code from Java and vice versa. In this implementation, Python source code is translated to Java bytecode (with help from a run-time library to support Python's dynamic semantics).

Next up : We tell you more about Python's stand against Javascript!
