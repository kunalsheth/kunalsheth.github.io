---
layout: post
title: Units of Measure Compiler Plugin
tags: design fabrication
author: Kunal Sheth
assets: /assets/units_of_measure/
thumbnail: 1.png
external_url: https://units.kunalsheth.info
---

Type-safe dimensional analysis and unit conversion can be extremely beneficial to a team. From personal experience, using type-safe calculations results in faster development, cleaner code, and higher developer confidence.
IDE autocomplete provides meaningful predictions, rather than just listing every number in scope. Variable names will be of a reasonable length now that unit information is documented by the type. All unit/dimension related bugs will show up at compile time. Debugging is less difficult and time-consuming.

units-of-measure's novel, metaprogramming approach to the problem makes it:
1. _Incredibly_ Extendable — Adding new functionality is as simple as adding a line to your build file. No tedious "hand-coding" is required.
2. Small — You only generate what you need. You are not forced to bundle every conceivable unit, quantity, and dimension with your app. 
3. Bug Resistant — Programming by hand is error prone and time-consuming. Code generation can ensure correctness.