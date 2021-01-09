---
layout: post
title: My First Printed Circuit Board
tags: electronics fabrication
author: Kunal Sheth
assets: /assets/my_first_pcb/
thumbnail: 4.jpg
---

With all this microcontroller programming, I’ve ran into some of the short comings of Arduino. This summer I created my own development board, to better address the needs of teams in the F.I.R.S.T. Robotics Competition.

{% include image.html asset="1.png" caption="Laying out my first PCB in KiCad." %}

In particular, I wanted my boards to have hardware USB support and built-in CAN-bus communication. My current goal is to finish writing a custom CAN+USB bootloader before I graduate high school.

{% include image.html asset="2.jpg" caption="After designing my PCB in KiCad, I got it manufactured." %}

After I got my boards manufactured and sourced all my parts, I had to learn how to solder SMD components. I learned about the solder paste+hot-air gun technique from some YouTube tutorials. With jittery hands and no microscope, this proved quite difficult in real-life. But with lots of trial-and-error, I eventually got the hang of it. After a couple weeks, I could confidently solder this MSOP-12 (0.65mm pitch) DAC onto my PCB.

{% include image.html asset="3.jpg" caption="Some of my components were very, very small." %}

The biggest feature of my board is a bit of a hack. In F.I.R.S.T. Robotics Competition, we have little choice other than using “smart” electronic speed controllers, which connect to both a motor and corresponding sensor. These ESCs are a control blackbox, limiting innovation. Instead of developing our own control software, students are pushed towards just tuning the ESC's PID gains. With only PID control, these “smart” ESCs aren't well suited to solve certain systems. They don’t allow us to add our own motor current limiting, custom filtering, or startup friction compensation algorithms. Instead of analyzing problems, students just tune gains all day. To get around these limitations, I designed my PCBs to simulate a potentiometer when attached to such “smart” ESCs. Now, if I set the ESC’s PID gains correctly, my PCB can “directly” control output to the motor. This re-opens the door to more advanced, student-written, hard- realtime control code in the F.I.R.S.T. Robotics Competition.

{% include image.html asset="4.jpg" caption="My finished PCB!" %}

This project is still a work in progress. The electronics are done, but now it's time to write the software. I look forward to exploring CAN protocol and writing my own bootloader in the coming months.

{% include video.html asset="5.mp4" caption="My PCB lights up and is detected as a USB device!" %}