---
layout: project
title: Minipops
permalink: /wiki/Minipops

project:
  name: "Minipops"
  description: "PCB design for Jan Ost's O2 synth (Korg Mini Pops Clone)"
  update: '2020-08-16'
  platform: "Arduino ProMini"
  version: '0.1'
  download: "[GitHub (PCB)](https://github.com/makervan/minipops), [Firmware](https://gist.github.com/anonymous/c85c864c337501680505/)"
  status: 'stable'
  image: /images/minipops/Minipops01.jpg
---

PCB for Jan Ost's O2 Synth

-   [Jan Ost's
    page](https://janostman.wordpress.com/the-o2-source-code/) (No
    longer available, see [Web Archive
    version](https://web.archive.org/web/20170918125855/https://janostman.wordpress.com/the-o2-source-code/)

> Like the Minipops 7 rhythm box? Yes, the one that Jean Michel Jarre
> used on the Oxygen album.
>
> Here is the source code to build one yourself.
>
> It runs unmodified on any Arduino.
>
> -   Tempo and 16 pattern select CV input.
> -   8 drum mute inputs.
> -   Run/stop input and clock/reset outputs.
>
> You can easily add a CD4067 AMUX chip for driving an analog sequencer
> in parallel with the rhythm pattern.

The code is licensed as "Free for non commercial use", so I'm not
selling these. If you want a PCB, I might have some spares, and I'll
give them to you for whatever I paid for it.

-   [Arduino Source on
    GitHub](https://gist.github.com/anonymous/c85c864c337501680505/)
    ([local mirror](/files/O2minipop.ino))

## Features

-   16 patterns, selectable via potentiometer
-   Tempo selectable via potentiometer
-   8 mute switches
-   Run/stop switch
-   Audio out via 3.5mm stereo plug
-   Optional sync out via audio plug, compatible to Teenage Engineering
    Pocket Operators

## Images

{% include image-gallery.html folder="/images/minipops" %}


## Parts

| Part of Circuit | Reference | Part Number                                | Distributor                                                                                                                                        | Amount |
|-----------------|-----------|--------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|--------|
|  Arduino        | uP1       | Arduino Pro Mini 5V 16Mhz                  |                                                                                                                                                    | 1      |
| Potentiometers  |  RV1, RV2 | 10kΩ lin, P09 style, e.g. P090S-14T20BR10K | [Digikey](https://www.digikey.de/product-detail/en/tt-electronics-bi/P090S-14T20BR10K/987-1277-ND/2408854)                                         | 2      |
| Resistors       | R1, R2    | 1kΩ                                        |                                                                                                                                                    | 2      |
| LED             | D1        | 5mm, yellow                                |                                                                                                                                                    | 1      |
| Switches        | SW1 - SW9 | Kippschalter                               | [mouser](https://www.mouser.de/ProductDetail/E-Switch/200MSP1T1B1M2QEH/?qs=%2fha2pyFadujsHs%252boFvi32tThU2%2fxzpVT80qAj%2fM06sHz7qq4klFuSQ%3d%3d) | 9      |
|                 |           | Schiebeschalter                            | [mouser](https://www.mouser.de/Search/ProductDetail.aspx?R=SS12SDP2virtualkey63300000virtualkey633-SS12SDP2)                                       | 9      |

## Known issues

-   LED D1 does not shine very bright, probably due to a fairly short
    clock impulse. Might help to decrease the resistor R1 quite a bit,
    but I haven't tested that yet.

## Further reading

-   [Blog Hoskins' O2
    build](http://bloghoskins.blogspot.com/2016/11/korg-mini-pops-diy-drum-machine.html)
    -   [Updates](http://bloghoskins.blogspot.com/2016/12/update-arduino-drum-machine.html)
-   [Adapted source for Clock/Sync
    In](https://gist.github.com/simonjuha/baeb4a23ba194d3f4b594b1e4b7ef412)
