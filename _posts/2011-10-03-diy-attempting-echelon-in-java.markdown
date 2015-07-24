---
author: robotixiitkgp
comments: true
date: 2011-10-03T07:28:52.000Z
layout: post
slug: diy-attempting-echelon-in-java
title: "DIY : Attempting 'Echelon' in Java"
wordpress_id: 238
categories:
  - The Do It Yourself Series
---

Though carrying out Natural Language Processing (NLP) for the [Robotix 2012](www.robotix.in) event [Echelon](www.robotix.in/events/echelon) might seem a daunting task, the tools for such are readily available online. The programmer need only concern himself with the appropriate usage of these tools to achieve his ends. This article deals with doing so using Java. And if you're one of those who is not quite familiar with the language, please do have a look at [http://download.oracle.com/javase/tutorial/](http://download.oracle.com/javase/tutorial/) Once you are comfortable with it, you can dive right into the more exciting world of NLP!

![](http://www.globalnerdy.com/wordpress/wp-content/uploads/2008/12/python-icon.jpg)

The first step is to download the Java Natural Language Processing Toolkit called Learning Based Java (LBJ) which is freely available online from [http://cogcomp.cs.illinois.edu/page/download_view/11](http://cogcomp.cs.illinois.edu/page/download_view/11). It comes as a JAR file which needs to be imported into the custom libraries section of whichever IDE is there on the user's computer for Java programming. There are several packages with several more classes, but it should not prove overwhelming. The next important step is to read the online documentation of this library, on the same site from where the downloading took place. Details of every function, in each class, in every package are given. There is actually a package called nlp and another called nlp.seg, but those are not the only ones relevant to this problem. Of course, there are similar toolkits for every major programming language, check them out at [http://en.wikipedia.org/wiki/Natural_language_processing_toolkits](http://en.wikipedia.org/wiki/Natural_language_processing_toolkits). The methods for implementing them will be similar to that mentioned above.

![](http://l.thumbs.canstockphoto.com/canstock2980231.jpg)

Armed with all the information one could need, it is now time to attempt the problem. The sample chat log on the site, or others found online, should be saved as a .txt file. Anyone familiar with Java, or for that matter, any programming language, will know that text files can be accessed and read from with the necessary commands. Inside the program, although one's first inclination might be to use a multi-dimensional array to store the various sentences typed in the chat log, and associate them with their authors, this author feels that such a process requires too many repeated traversals of the chat log to decide specific dimensions of the array (How many chat users, how many lines each typed .etc). A more prudent approach would be to use a recursive data structure like a linked list or a structure, and keep adding information as and when needed.

There are numerous methods one might employ to decide which anonymous statement goes to which chat participant. However, all of them will involve detailed analysis of the text in the chat log, and its meaning. It is important to remember that no code is expected to be right all the time, just enough times for it to be meaningful and not arbitrary. Manipulation of the text can be easily handled with the parse package in LBJ, while the infer package deals with trying to figure out what the sentences imply. Additional assistance can be obtained in the form of an electronic text corpus, which is an extensive list of words of the English language, as well as a freely available spell check software, in case of a random inconsistency in the chat log.

![](http://static.commentcamarche.net/en.kioskea.net/faq/images/0-uGQqwvSa-java-s-.png)

All of that, however, will come with time. For those new to this sphere, just start by installing the software and creating your own, small chat log to start with, which you can use to apply your newly-honed text analysis skills! Take each sentence individually and store it in a separate element of the data structure you have chosen. Then test out the functions of the LBJ libraries with each separate sentence and see what results you get! Now if you can incorporate results of multiple function calls on the text in a single program, you have officially completed your first concrete step on the way to NLP.

Well, you now have all the tools we think you need. So gear up and start coding! And if you ever need a helping hand, feel free to post on our forum, where we have a section dedicated to the event.
