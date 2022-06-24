---
layout: project
title: MatrixMix
permalink: /wiki/MatrixMix

project:
  name: MatrixMix 4x4
  status: beta
  image: /images/matrixmix/Matrixmix02.jpg
  description: A simple yet extendable matrix mixer
  author:
  username:
  version: 0.2
  update: 2021-02-17
  platform:
  license:
  download: "[GitHub Repo](https://github.com/makervan/matrixmix)"
  shop:
---

A simple passive 4x4 matrix mixer. Extendable, and with sync
passthrough.

## Features

-   4 Inputs
-   4 Outputs
-   Extension ports so extend the mixer to many more inputs, or add
    buffers/amplifiers to the outputs
-   Sync passthrough, to support sync signals on the audio jack, like in
    Teenage Engineering Pocket Operator synths. Selectable on each
    input/output

Note: This is a passive mixer. So when you change one knob, there might
be changes of loudness for the other channels as well. There’s no
buffering between the channels, so it’s completely normal like that.

## Pictures

{% include image-gallery.html folder="/images/matrixmix" %}

## Parts

<table>
<thead>
<tr class="header">
<th><p>Part of Circuit</p></th>
<th><p>Part Number</p></th>
<th><p>Distributor</p></th>
<th><p>Amount</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Potentiometer (50kΩ lin)</p></td>
<td><p>Bourns PTV09A-4020S-B503</p></td>
<td><p><a
href="https://www.digikey.com/short/w9d1z9rb">DigiKey</a><br />
<a
href="https://www.mouser.de/ProductDetail/Bourns/PTV09A-4020S-B503?qs=%2Fha2pyFaduhvapXs4is1IANZgJt5W4lJfjvMO9hwi6whpo%252BuO8Sllpz%252BtBrRx2Sw">Mouser</a></p></td>
<td><p>16</p></td>
<td><p>Suggested for v0.1</p></td>
</tr>
<tr class="even">
<td><p>Potentiometer (50kΩ log)</p></td>
<td><p>Bourns PTV09A-4020S-A503<br />
ALPHA RV09AF-40-20K-A50K</p></td>
<td><p><a
href="https://www.digikey.com/short/bv13h7n1">DigiKey</a><br />
<a
href="https://www.mouser.de/ProductDetail/Bourns/PTV09A-4020U-A503?qs=%2Fha2pyFaduhvapXs4is1INWFDYOun3CUeLKni%252Bb%252BSDrMWUaQ2%2FjLbw%3D%3D">Mouser</a><br />
<a
href="https://www.taydaelectronics.com/potentiometer-variable-resistors/rotary-potentiometer/logarithmic/50k-ohm-logarithmic-taper-potentiometer-round-knurled-plastic-shaft-pcb-9mm.html">Tayda</a></p></td>
<td><p>16</p></td>
<td><p>Suggested for v0.2</p></td>
</tr>
<tr class="odd">
<td><p>3.5mm jacks</p></td>
<td><p>EBSF 35<br />
SJ1-3525N</p></td>
<td><p><a
href="https://www.reichelt.de/Klinkeneinbaubuchsen/EBSF-35/3/index.html?ACTION=3&amp;LA=2&amp;ARTICLE=153203&amp;GROUPID=7448&amp;artnr=EBSF+35&amp;SEARCH=%252A">reichelt</a><br />
<a href="https://www.digikey.com/short/zvjf7r">DigiKey</a><br />
<a
href="https://www.mouser.de/ProductDetail/CUI-Devices/SJ1-3525N?qs=WyjlAZoYn505QPmBO3I74g%3D%3D">Mouser</a><br />
<a
href="https://www.taydaelectronics.com/hardware/3-5mm-plugs-jacks/3-5mm-stereo-enclosed-socket-chassis-jack.html">Tayda</a></p></td>
<td><p>8</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Resistors</p></td>
<td><p>10kΩ</p></td>
<td><p>reichelt<br />
<a href="https://www.digikey.com/short/fjnz8d55">DigiKey</a><br />
<a
href="https://www.mouser.de/ProductDetail/Yageo/MFR-25FTE52-10K?qs=sGAEpiMZZMsPqMdJzcrNwiweiCzxKzWLjbCyYboaOn0%3D">Mouser</a><br />
<a
href="https://www.taydaelectronics.com/resistors/1-8w-metal-film-resistors/r-10k-ohm-1-8w-1-metal-film-resistor.html">Tayda</a></p></td>
<td><p>16</p></td>
<td></td>
</tr>
</tbody>
</table>

You can populate P1-P8 with 3-pin 2.54mm headers, and mix the two
channels of a stereo plug together, or pipe the second channel through
to other devices, in a mode compatible with the Pocket Operator synths
or similar modules.

Connectors P9 and P10 can be used to connect multiple MatrixMix 4x4
boards together to create a matrix mixer with 8, 12 or even more inputs.

## Versions

### v0.1

This is an early prototype version of the MatrixMix 4x4 PCB. As such, it
has one fun error in it: All potentiometers are backwards. So you have
to turn each knob counterclockwise to make things louder. It’s a little
unusual, but also kind of fun. Note though, that normally you would use
logarithmic pots for audio signal. When soldering the PCB as is, this
does not make much sense. So use linear pots instead (There are reverse
logarithmic pots, but they are hard to come by).

One alternative is to flip the board upside down and solder the pots
from the back side. That works quite well, just your inputs are now on
the bottom (or your outputs on the left, depending on your flip). Make
sure to solder the 3.5mm jacks in as originally intended, otherwise the
sync-passthrough does not work anymore.

-   Potentiometers are wired the wrong way, they all turn the wrong way
-   10k Pots and 10k mixing resistors don't turn things all the way down

### v0.2

Potentiometer orientation is fixed, and with proper values (50kΩ pots +
10kΩ mixing resistors) this thing is lots of fun.

### v0.3

Fixed sync pinout, and add an option to use half the input / output jacks
as true stereo inputs/outputs.

### v0.4 (in planning)

-   Add option to use 6.35mm jacks (1/4")
    -   Would have to be mounted on the underside of the PCB so allow
        the size to remain the same
    -   Possible jacks:
        [MJ-63022A](https://www.digikey.de/product-detail/de/cui-devices/MJ-63022A/2223-MJ-63022A-ND/13155722)
        (should've the option for the switched variant as well),
        [NRJ4HF-1](https://www.mouser.de/ProductDetail/Neutrik/NRJ4HF-1?qs=k%252BYsFdH4oLjyfmglMcnMhg%3D%3D),

## References

-   [Doepfer DIY](http://www.doepfer.de/DIY/a100_diy.htm)
