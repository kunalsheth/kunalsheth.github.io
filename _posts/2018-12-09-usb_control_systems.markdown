---
layout: post
title: USB Control Systems
tags: software electronics robotics
author: Kunal Sheth
assets: /assets/usb_control_systems/
thumbnail: 3.jpg
---

Since 2017, I've lead my robotics team's Software Workshops. I wanted to get my peers interested in my favorite subject and build a strong robotics software team. In this picture, I’m teaching students about D.C. motor physics, electronic speed controllers, and motor current limiting algorithms. To keep students engaged, I replaced one of the wheels on the robot with a 25lb weight (whose inertia simulates the forces required to accelerate the actual 120lb robot.) That way, I could run the robot on a dolly with a current sensing oscilloscope probe on the motor. During this workshop, I showed students how accelerating and decelerating the spinning weight affected current flow through the motor. By the end, my students understood how to prevent motors from burning out, by calculating and limiting current flow in their software.

{% include image.html asset="1.jpg" caption="Leading my robotics team's Software Workshops." %}

High school robotics is so engaging because kids get to see their code move something in real- life. But with 53 students attending my Software Workshops, and only a single, expensive robot to go around, most kids never got to run their code. Often, my students were visibly bored. I wished I could've given everyone a robot to play with.

{% include image.html asset="2.jpg" caption="My workshops prior to USB Control Systems." %}

The goal of my USB Control Systems project was to give each of my students their own robot. So, I designed my devices to be:
- Affordable: under $100 each
- Operating-system independent: my device and software run on Windows, MacOS, &
Linux
- Programming language independent: students don’t have to learn another language or
set of APIs just to get started. They can focus on learning control techniques.
- Capable of real-time control: my device and software doesn’t add much latency.
Consistent, 10ms loops run on the students' laptops.
- Useful for teaching a wide variety of control techniques: students can directly apply
what they learn to the 120lb robots we build on the robotics team.

This was my first project working with microcontrollers. At first, I tried using a severely underpowered, 8-pin ATtiny85. While I eventually upgraded to an ATmega32u4 (with hardware USB support), I learned a tremendous amount on the 85, bit-twiddling to suck every ounce of capability from the hardware.

{% include image.html asset="3.jpg" caption="My USB Control System Device." %}

A video demoing my USB Control Systems and how they made my curriculum more engaging. (Please turn your volume up.)

<div style="position: relative; width: 100%; height: 0; padding-bottom: 56.25%">
<iframe style="position: absolute; top:0;left:0; width:100%;height:100%; border: 0;" src="https://www.youtube.com/embed/9JCy2KdFIb4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

During the next year's Software Workshops, I placed my USB Control systems around the classroom. Students teamed up and raced to solve my control challenge exercises, many watching their code move something for the first time. With USB Control Systems, my workshops were far more captivating than with slideshows and lectures alone.

{% include image.html asset="5.jpg" caption="USB Control Systems make my workshops super engaging!" %}

These students are discussing how to control a weighted clock hand. I designed this challenge to be very difficult—a non-linear system requiring a combination of all the control techniques I’d taught during my 20+ hour workshop. I felt happy to see each student exploring and experimenting as they pleased. They saw, heard, and felt their code on real-life mechanisms— the same experiences which mesmerized me when I was a freshman. Later that year, I used my devices to present an additional 2-hour workshop at the Western Region Robotics Forum, titled “Hands-On Control Theory.”

{% include image.html asset="6.jpg" caption="Students work together to solve non-linear USB Control System challenge problem." %}

[Google Drive for Presentation Slides, Example Code, & Graphs](https://drive.google.com/drive/folders/1akYKVtob_Iw1L97j_0PWqasuh5g3VP6O?usp=sharing)

[GitHub Repository for Device BOM, Firmware, & Software](https://github.com/Team846/usb-control-system)