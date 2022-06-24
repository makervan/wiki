---
layout: project
title: Powerhub XT60
permalink: /wiki/Powerhub_XT60

project:
  name: PowerHub XT60
  status: beta
  image: /images/powerhub_xt60/Powerhub_xt60_02.jpg
  description: DC distribution board using XT60 connectors
  author:
  username:
  version: 0.1
  update: 2021-02-23
  platform:
  license: CC BY-SA 4.0
  download: "[GitHub Repo](https://github.com/tiefpunkt/powerhub-xt60)"
  shop: "[Tindie](https://www.tindie.com/products/makervan/powerhub-xt60/)"
---
The **PowerHub XT60** is a distribution board for up to 6 XT60
connectors (male or female), with optional power LED as well as screw
terminals. It's loosely based on the [XT60
board](https://github.com/jesseaster/xt60board) by jesseaster, has only
a single row of 6 XT60 connectors, a screw terminal, an optional status
LED, and 2 M3 mounting holes.

XT60 connectors are really practical low-voltage DC power connectors.
They are sturdy, have a really good friction fit and don't cost a
fortune. They are quite common in the RC world, but I have started using
them in many other places, e.g. as a replacement for round DC jacks or
car cigarette lighter plugs. They are also frequently used in the DIY
powerwall community.

I have a number of devices that have an XT60 plug now, but not as many
batteries. So I needed a power strip or some other kind of distribution.
Looking around online, most of the stuff seemed rather sketchy, so I
designed my own.

The PowerHub XT60 board can take up to 6 XT60 connectors, and you can
freely mix and match male & female connectors. So you can do a
"traditional" power strip with a single male power input, and up to 5
female power out sockets, or the other way around, e.g. to join multiple
DIY powerbanks in parallel, with up to 5 male plugs and a single female
plug.

{% include image-gallery.html folder="/images/powerhub_xt60" %}


## Parts

<table>
<thead>
<tr class="header">
<th><p>Part</p></th>
<th><p>Partnumber</p></th>
<th><p>Amount</p></th>
<th><p>Source</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PCB</p></td>
<td><p>powerhub XT60 PCB</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.tindie.com/products/makervan/powerhub-xt60/">Tindie</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>XT60 connector</p></td>
<td><p>XT60 male or female</p></td>
<td><p>6</p></td>
<td><p><a
href="https://www.reichelt.de/steckverbinder-fuer-li-polymer-akkus-2-polig-xt60-hstxt60-stbu-p207648.html?&amp;trstct=pos_1&amp;nbc=1">Reichelt</a><br />
<a
href="https://s.click.aliexpress.com/e/_AfWVic">AliExpress</a></p></td>
<td><p>Male and female connectors can be mixed as necessary</p></td>
</tr>
<tr class="odd">
<td><p>Screw terminal</p></td>
<td><p>2 pole, 5.08mm</p></td>
<td><p>6</p></td>
<td><p><a
href="https://www.reichelt.de/loetbare-schraubklemme-2-pol-rm-5-08-mm-90--ctb0509-2-p292701.html?search=CTB0509-2">Reichelt</a><br />
<a
href="https://www.digikey.de/product-detail/de/adam-tech/EB21A-02-D/2057-EB21A-02-D-ND/9831208">DigiKey</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><em>Indicator LED (optional)</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>LED</p></td>
<td><p>LED 3mm</p></td>
<td><p>1</p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Resistor</p></td>
<td><p>R1: 1k</p></td>
<td><p>1</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## Current Rating

XT60 connectors are supposed to be able to handle 60A. Not sure if
that's really the case, but it would be interesting to see how much
current the PowerHub can handle.

In the sections between the XT60 connectors, the PCB traces are roughly
5.6mm wide. The PCBs on tindie have been made with 1oz of copper, and we
have traces on both sides of the PCB.

According to [this
table](https://www.mclpcb.com/wp-content/uploads/2018/06/Trace-Calculator.png)
by
[MCLPCB](https://www.mclpcb.com/blog/pcb-trace-width-vs-current-table/),
and tolerating a 10° temperature increase, **the plain PCB** would be
able to handle **8A per side, 16A in total**. This is under the
assumption that the PCB is fully populated with XT60 connectors,
otherwise the holes will lead to a decrease in current capacity.

It's recommended though to "enforce" the traces with solder all along
the way, which would increase the current capacity of the PowerHub. How
big the increase will be depends on the type and amount of solder used.

## License

-   Licensed under Creative Commons Attribution-ShareAlike 4.0 Unported
    License (CC BY-SA 4.0)
