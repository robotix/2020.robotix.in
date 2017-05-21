---
layout: post
title: "Video and Callback -opencv"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/video_and_callback/"
---

#### Video Tutorial

#### Introduction

**We have already observed how to load images from file and display them, and also how to generate images of our own. Now we will have a look at where image processing is required, and that is in manipulating videos. Essentially this concept is a combination of the application of the above two things we discussed. We will also look at another very useful tool in OpenCV - mouse callback.**

#### Video Processing

**CONCEPT  
In this practice, unlike with images, the input is a video file, using pointers of the type CvCapture, which have been explained before. Now while the input is taken as a video, the chief work is done on images. How does that happen?  
Well, a video is after all a collection of a large number of images, shown at such a quick speed that our eye perceives them to be continuous. For video processing, we basically consider each frame of the video as an image, and we operate on that image. Then there is a small time interval, which is close to the interval for which each frame is actually shown in the video, before we move on to the next frame. This helps us to accurately access the entire video**

PROGRAM  
The following program takes a video file as input, and displays it frame by frame.  

<script src="https://gist.github.com/wowitsmrinal/4246009.js"></script>

UNDERSTANDING THE CODE  
The variables required are declared and initialized. The concept of looping through each frame of the video is applied via a while loop which runs continuously. One important thing to note is that here, though the video is finite in length, we are using an infinite while loop (the condition of the 'while' is 1, which is always true). This is because an infinite while loop is required while taking feed from a camera during a particular operation. We may not know when to stop the loop, so generally we make it infinite while we place the 'break' command in a particular condition so that the loop terminates when that condition is encountered. This makes our program easier to understand.  
In each iteration of the loop, the current frame of the video is taken as an image in the variable frame, using the function cvQueryFrame(), whose only parameter is the video stream to capture frames from. Then the image is shown on screen through the window, followed by a time interval which is roughly equal to the actual interval between frames of the video. This is found by dividing 1000 by the FPS of the video and rounding it off. Since the parameter of cvWaitKey() is in milliseconds, if there are f frames per second in the original video, then each frame moves to the next after 1/f seconds or 1000/f milliseconds.  
After the time for each frame in milliseconds has elapsed, we move to the next iteration of the loop. In the meantime, if any key is pressed and it happens to be the ESC key whose Unicode value is 27 (we know that character variables actually store the unicode value of the character), then the loop exits, via the break command, and the program comes to an end.

#### Callback

**CONCEPT  
This is a useful feature of OpenCV for handling mouse events. By specifying code in a particular manner, we can ensure that every time the mouse performs some action while on a window screen, some feedback is sent to the system, and if that action happens to be what we are looking for, then something will be executed.   
For example, we want a video to start, or an image to be shown only when the mouse moves over the window that it will be shown in, or only when there is a left click on the window we will display the video in.   
There is a particular format and a function that deals with this task, and we will have a look at that after seeing the sample code.**

PROGRAM  
The following program displays a video, like the program mentioned above. Only here it prints the co-ordinates of the point which is clicked using the pointer  

<script src="https://gist.github.com/wowitsmrinal/4246070.js"></script>

UNDERSTANDING THE CODE  
After the initial inclusions, we have the global variables declared for storing the co-ordinates, and a flag to check if the mouse event is called or not. The reason for having these variables as global becomes clear when we observe the next declaration, the function void mouse_callback(). This function will be called every time a mouse event occurs in the specified window. The first parameter of it is the event itself, and each event is an integer which is referenced by a particular macro (in this case the left button click). A list of the valid macros, along with other necessary details of the required function can be found in the section under cvSetMouseCallback in the online OpenCV documentation. The last two parameters are not so important right now.  
Inside the function, we check if the event returned is indeed the clicking of the left button of the mouse. If that is the case, then the co-ordinates of the event are stored in our global variables and our own flag which checks for the event is set to 1. We will see how this is significant inside the main function.  
Now moving onto the main function, the initializations are same as seen before. Only this time, inside the while loop, we see a new function, the cvSetMouseCallback() function. This is the one that assigns mouse callback for various events. Its parameters include the window where the event will happen, the mouse_callback function we have defined, and another user defined parameter needed for the mouse_callback function. This final parameter can be assigned NULL, as we don't need to pass any value to the callback function. Inside the while loop, this function is called with the necessary parameters. Now if the mouse event happens to be the left click, as we had specified earlier, the flag clicked would be set to 1. So every time this function is called, we check the value of our flag clicked. If it turns out to be 1, then that means the co-ordinates for that instance refer to the co-ordinates of the point clicked. (It should be noted that the origin of this co-ordinate system is the upper left corner of the frame)   
Once the co-ordinates for the left click are obtained, they are printed on the output screen. This continues till the user presses Esc and ceases the iterations.

#### Capturing from Camera

**CONCEPT  
In addition to loading existing videos from file, OpenCV provides routines to capture live streaming video from a camera device, either one in-built with the computer, or connected to it via a port.  
Instead of the cvCreateFileCapture() function we used for loaded videos, we use the cvCreateCameraCapture() function. The argument here is simply a number which is the ID of the camera being used. Of course, this is relevant only when multiple cameras are being used. For systems with a single camera, the argument -1 will suffice as it directs the function to choose any one camera.  
The above function returns a CvCapture* pointer just as the cvCreateFileCapture() function did, and thereafter we utilize it just as we did the pointer in the other cases. We can capture individual frames, operate on them and display them accordingly.**

PROGRAM  
The program below will show how to take input from a camera connected to the computer, and output the video stream  

<script src="https://gist.github.com/wowitsmrinal/4246131.js"></script>

UNDERSTANDING THE CODE  
The program is very simple. We start by declaring the CvCapture pointer capture and assigning to it the value returned by the function CvCreateCameraCapture() with the parameter -1. In the case shown in the video tutorial, there is only one camera connected, and that will be activated.  
The rest of the program is exactly the one shown above for an existing video. Each frame is captured, shown on screen, and after a wait time of 33 milliseconds, the next frame is taken.
