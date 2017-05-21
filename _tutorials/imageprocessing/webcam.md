---
layout: post
title: "Webcam Interface -Matlab"
categories:
  - imageprocessing
redirect_from: "/tutorials/category/imageprocessing/webcam/"
---

#### Webcam Interface

Firstly, Matlab needs to find out what are the webcam devices that are connected to your computer.

A imaqhwinfo gives information about the existing adaptors for your webcam device. You can get more information on each adapter, by using imaqhwinfo('winvideo') where winvideo is one of the adaptors. In this, (if you have a device connected) you shall get Device IDs attached to your webcam device. Further information pertaining to the device can be obtained by imaqhwinfo('winvideo',1) where 1 is the Device ID you saw earlier.  
This gives you much needed information regarding the capture device. The resolution (800×600, 1024×768, 1600×1200, etc.) and format (RGB, YUV, etc.) which needs to be selected when creating a video object.

Armed with all this imaqhwinfo (image acquisition hardware information) you are ready to create your own video object.

The most important command now would be to start your video object start(vidobj). It is at this point, or during the creation of video object, that the light (if any) on your webcam would start glowing indicating capture.

You can obtain snapshots of capture by using the frame = getsnapshot(vidobj); or view the continuous stream of frames by saying preview(vidobj);.

A safe closure (unlocking of the video handles) of the video object is extremely important so that it can be started again easily. A stop(vidobj) followed by delete(vidobj) is the best way to follow.

All the options can be seen by imaqhelp(videoinput).

**Get Image from camera**

getsnapshot can be put inside a while loop to process frames of the video  
 
