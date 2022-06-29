---
layout: project
title: MicroGrid Connection Unit
permalink: /wiki/MicroGrid_Connection_Unit

project:
  name: "MicroGrid Connection Unit"
  description: "Connecting multiple autonomous (renewable) energy installations in a safe way"
  update: '2021-08-16'
  platform: "Arduino Nano"
  version: '0.1'
  download:
  status: 'experimental'
  image: /images/microgrid_connection_unit/breadboard03.jpg
  social:
    e14: https://community.element14.com/search?q=%22MicroGrid%20Connection%20Unit%22#serpq=%22MicroGrid%20Connection%20Unit%22&serpauthor=377900&serpsort=titlesort
    hackaday: https://hackaday.io/project/179713-microgrid-connection-unit
    github: https://github.com/tiefpunkt/microgrid_connection_unit
---

We had the idea to create a connection box that allows easily connect your own solar system to a micro grid of other similar systems. The MicroGrid Connection Unit should ensure the safety of your own system, adapt to the specifics of the microgrid in question, and allow for monitoring and statistics.

The connection unit should measure voltages on both sides of the unit (private system, the micro grid) and decide whether to provide power to the grid, or pull energy from the grid. Doing either one, it should keep track of the energy consumed or provided. It should safeguard itself and the private system by checking for over-voltage in the grid, under-voltage in the private system (to protect batteries from depletion), excessive currents and other potential dangers. The information it gathers should not only be used internally, but also provided to the user, e.g. via a WiFi or BLE interface, or longer range technologies such as LoRaWAN. It could also provide additional adaption to the grid, like DC-DC-conversion if the grid is operated at a different voltage than the private system.


## Blog Posts

### MicroGrid Connection Unit #1: Introduction
Hello there! Here's the introduction to my project for this year's Design For a Cause challenge, the MicroGrid Connection Unit. I want to create a device that allows to connect existing DC power systems to a small grid, e.g. to allow multiple caravans with solar systems to each other. Let's go into how I got to this idea.

#### The Problem

Festivals and camps sometimes happen out where there is not enough electrical infrastructure to support them, so generators and other power generating equipment has to be brought. At CCCamp2015, there was the idea to at least partially solve this problem by creating micro grids. Many people bring solar systems in their campers or by other means, and sizing of those is usually above what's necessary, especially if you're out and about all day. By creating means to connect these systems and share clean solar energy with others, the dependency on fossil fuel based power generation could be reduced.

![CCCamp15](/images/microgrid_connection_unit/cccamp15.jpg)

Since then, discussions with others as well as reading different kinds of literature on the topics has shown me that this topic not only applies to the situation above, but is also interesting in other scenarios with potentially more impact, like tiny-house collectives, or off-grid villages in third world countries.

#### Design Plan

We had the idea to create a connection box that allows easily connect your own solar system to a micro grid of other similar systems. The MicroGrid Connection Unit should ensure the safety of your own system, adapt to the specifics of the microgrid in question, and allow for monitoring and statistics.

The connection unit should measure voltages on both sides of the unit (private system, the micro grid) and decide whether to provide power to the grid, or pull energy from the grid. Doing either one, it should keep track of the energy consumed or provided. It should safeguard itself and the private system by checking for over-voltage in the grid, under-voltage in the private system (to protect batteries from depletion), excessive currents and other potential dangers. The information it gathers should not only be used internally, but also provided to the user, e.g. via a WiFi or BLE interface, or longer range technologies such as LoRaWAN. It could also provide additional adaption to the grid, like DC-DC-conversion if the grid is operated at a different voltage than the private system.

These additional adaptions lead to multiple possible iterations of a MicroGrid Connection Unit, as shown in this little sketch:

![Sketch 01](/images/microgrid_connection_unit/sketch01.png)

#### Next Steps

To get started, I'm planning to build the first and simplest version which should allow for a unit to connect to a grid at the same voltage level, while showing infromation on a LCD or OLED screen. The idea is to eventually be able to configure the unit and gather metrics from it with a smart phone or laptop, so creating that interface will be step two. After that, we'll see how far I can go to implement a DC-DC converter to create a much more advanced unit.
