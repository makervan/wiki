---
layout: project
title: Synthiboard
permalink: /wiki/Synthiboard

project:
  name: Synthiboard
  status: stable
  image: /images/synthiboard/Synthiboard_picture.jpg
  description: Synthesizer development board, powered by an Arduino Pro Mini
  version: 0.1
  update: 2017-08-06
  platform: Arduino Pro Mini
  license: CC BY-SA 4.0
  download: "[GitHub](https://github.com/makervan/synthiboard)"
  shop: "[Tindie](https://www.tindie.com/products/makervan/synthiboard/)"
  social:
    hackaday: https://hackaday.io/project/177597-synthiboard
    github: https://github.com/makervan/synthiboard
---
<img src="/images/synthiboard/Synthiboard_picture.jpg" title="Synthiboard_picture.jpg"
width="400" alt="Synthiboard_picture.jpg" />

An Arduino board that can
run a number of different synth firmwares (maybe with minor
modifications). Bunch of potentiometers, bunch of buttons. And some
space to experiment.

The source for hardware and available firmware is up on GitHub now:
[makervan/synthiboard](https://github.com/makervan/synthiboard).

## Hardware

<img src="/images/synthiboard/Synthboard01_front.png" title="Synthboard01_front.png"
width="400" alt="Synthboard01_front.png" />

We're using an Arduino Pro
Mini as the core of our synth. Input devices are up to 6 buttons and up
to 5 potentiometers. Output is done via PWM and a low-pass filter.
Unfortunately, there's not enough oomph on that output to make it work
with headphones, you need powered speakers.

The required minimal input configuration depends on the type of firmware
you are using (see details below).

There's a perfboard section of the board that allows you to make your
own addons to the synth. Feel free to share your hacks.

### Parts

<table>
<thead>
<tr class="header">
<th><p>Part</p></th>
<th><p>Partnumber</p></th>
<th><p>Source</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>PCB</p></td>
<td><p>Synthiboard v0.1</p></td>
<td><p><a
href="https://www.tindie.com/products/makervan/synthiboard/">Tindie</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Arduino</p></td>
<td><p>Pro Mini, 5V, 16Mhz</p></td>
<td><p><a href="https://www.digikey.com/short/zvjrjq">DigiKey</a><br />
<a
href="https://www.aliexpress.com/wholesale?SearchText=arduino+pro+mini+5v">AliExpress</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Micro USB Connector</p></td>
<td><p>Amphenol ICC (FCI) 10118194-0001LF</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjrv1">DigiKey</a></p></td>
<td><p>Used for power only</p></td>
</tr>
<tr class="even">
<td><p>DC barrel jack</p></td>
<td><p>e.g. CUI Devices PJ-002A</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjf3m">DigiKey</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>3.5mm stereo jack</p></td>
<td><p>CUI Devices SJ1-3525N, Switchcraft Inc. 35RAPC4BHN2</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjf7r">DigiKey</a></p></td>
<td><p>min. 1 as output, there's space for two more</p></td>
</tr>
<tr class="even">
<td><p>Buttons</p></td>
<td><p>Tactile Switch SPST-NO</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjf87">DigiKey</a></p></td>
<td><p>There are many different colors available, as well as different
lengths of the button.<br />
You'll need minimum one for the reset button, and 0-6 for the synth
itself.</p></td>
</tr>
<tr class="odd">
<td><p>Potentiometer</p></td>
<td><p>Bourns Inc. PTV09A-4225F-B103</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjfp4">DigiKey</a></p></td>
<td><p>There's space for up to 5 pots on the board</p></td>
</tr>
<tr class="even">
<td><p>Resistor R1</p></td>
<td><p>1k Throughhole</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjf44">DigiKey</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Electrolyte capacitor C1</p></td>
<td><p>10µF radial, 2.0mm leg spacing</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjfhp">DigiKey</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Capacitor C2</p></td>
<td><p>10nF, 2.5/2.54mm leg spacing</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjfbp">DigiKey</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Pin headers</p></td>
<td><p>2.54mm single row</p></td>
<td><p><a
href="https://www.digikey.com/short/zvjffv">DigiKey</a></p></td>
<td><p>3 pins are necessary for the second channel on the audio out
(sync/audio)<br />
Get some long rows, and then cut them to size as necessary</p></td>
</tr>
<tr class="even">
<td><p>Pin sockets</p></td>
<td><p>2.54mm, single row, 12pin or 2pin</p></td>
<td><p><a href="https://www.digikey.com/short/zvjfnp">DigiKey
(12pin)</a><br />
<a href="https://www.digikey.com/short/zvjfd8">DigiKey
(2pin)</a></p></td>
<td><p>For socketing the Arduino. Don't forget the two 2-pin headers on
the inside of the Arduino board.</p></td>
</tr>
<tr class="odd">
<td><p>FTDI Programming adapter</p></td>
<td></td>
<td><p><a
href="https://www.digikey.com/short/zvj2qd">DigiKey</a></p></td>
<td><p>To program the Arduino from your computer. If you already have
one, you don't need another one.</p></td>
</tr>
</tbody>
</table>

## Firmwares

There are currently three different firmwares running on the board. They
are all in the GitHub repository.

### Auduino

The
[Auduino](https://code.google.com/archive/p/tinkerit/wikis/Auduino.wiki)
is a Lo-Fi granular synthesizer, initially developed by Peter Knight. It
runs on the Synthiboard pretty much out of the box, but there's the
chance to do some hacks, which we'll describe in the workshop (and on
here sometime soon).

-   [Firmware for the
    Synthiboard](https://github.com/makervan/synthiboard/tree/master/firmware/auduino)

#### Input Components

-   5 potentiometers
-   No buttons.

### Drummachine

The Drummachine is a 4 sample 16 slot drum sequencer, based on code
written by [Sebastian
Tomczak](https://little-scale.blogspot.be/2013/05/diy-polyphonic-drum-machine-and-rhythm.html),
which has been adapted to work with the Synthiboard. The original uses
an R2R DAC, the Synthiboard version PWM for audio output instead.

There's a few hacks for this one as well, which we'll talk about in the
workshop.

-   [Adjusted Firmware for the
    Synthiboard](https://github.com/makervan/synthiboard/tree/master/firmware/r2r_drum_machine_pwm)

#### Input Components

-   1 potentiometer
-   4 buttons ( + reset)

### Glitch Storm

The [Glitch
Storm](https://github.com/spherical-sound-society/glitch-storm) is a
chiptune synth by [Spherical Sound
Society](https://github.com/spherical-sound-society). It's available as
a kit on
[tindie](https://www.tindie.com/products/jc2046/glitch-storm-multidimensional-synth-mkii-black/),
but runs on the Synthiboard as well (with some minor adjustments). We're
missing the LEDs still, that's for a future correction.

-   [Adjusted Firmware for the
    Synthiboard](https://github.com/makervan/synthiboard/tree/master/firmware/glitch_storm)

#### Input Components

-   3 potentiometers
-   2 buttons ( + reset)

## Development

### R2R DAC vs. PWM

There are a few ways to generate sound from an Arduino: PWM, a simple
R2R DAC, or a dedicated DAC IC.

-   <https://www.reddit.com/r/AskElectronics/comments/15azgw/what_are_the_pros_and_cons_of_using_an_r2r_vs_a/>
-   <https://electronics.stackexchange.com/questions/188790/signal-generator-pwm-or-r2r>
-   <https://circuitplay.blogspot.de/2013/11/active-filtering-of-arduinos-pwm-output.html>
-   <https://books.google.de/books?id=kK1PCwAAQBAJ&lpg=PA456&dq=sallen-key%20filter%20arduino&hl=de&pg=PA456#v=onepage&q=sallen-key%20filter%20arduino&f=false>

### Additional Firmware

#### Drumkid

-   Uses 6 buttons (✔), 4 pots (✔), 5 LEDs (✘, could be put on the
    prefboard section), PWM output (✔)
-   [HackADay.io
    Project](https://hackaday.io/project/164521-drumkid-aleatoric-drum-machine)
-   [GitHub Repo](https://github.com/mattybrad/drumkid)
-   Audio Out PWM uses a different timer and different output pin, so
    maybe for another HW revision
-   maybe we can also add sync out

#### Helios One

-   <http://bloghoskins.blogspot.com/2020/07/helios-one-arduino-synth-part-31-minor.html>

#### Ellitone Multi-Synth

> The Ellitone Multi-Synth is a budget-friendly digital synthesizer that
> can produce a wide variety of sounds thanks to its 6 selectable
> synthesis/operation modes. Each of these 6 synthesis/operation modes
> utilize the instruments 4 knobs, 4 keys, and center patch bay in
> different ways.

-   [Demo video](https://www.youtube.com/watch?v=M0V9ygb5y1E)
-   [Explanation of different modes](https://drive.google.com/drive/folders/199UJIC_pPivkI-eqt9KlU8keMBXIYhHy)
-   [Firmware source on Google Drive](https://drive.google.com/drive/folders/18lSqx8nkNqKk9YikhkYc8TYXYAGtC2VJ)
    -   [Code release post on reddit](https://www.reddit.com/r/modular/comments/9txhe9/ellitone_multisynth_firmware_released_as_open/)
    -   [GitHub mirror](https://github.com/Tolsi/Ellitone-Multi-Synth-Firmware)

Uses Mozzi library, which uses the "wrong" audio output pin. So it won't
work out of the box, but I'll give it a shot, and I've been thinking
about a new hardware revision to address this.

#### BleepDrum
* [DrumSynth by BleepLabs](https://bleeplabs.com/product/the-bleep-drum/)
* [Source Code](https://github.com/BleepLabs/Bleep-Drum)
* [Other BleepLabs Synths, e.g. Nebulophone](https://bleeplabs.com/devices/)

#### Mozzi Examples
The Mozzi library has some examples that might be worthwhile to take a look at:
* <https://github.com/todbot/mozzi_experiments/blob/main/eighties_arp_uno/eighties_arp_uno.ino>

Also there are loads of other synths using Mozzi:
* [Arduino Atari Punk Synth](https://hackaday.io/project/170679-arduino-atari-punk-synth)

### PCB redesign

-   Straight ATmega328 instead of ProMini board
    -   A little more expensive but looks better
-   remove the USB port
    -   more trouble than it is worth
-   Battery power (3\* AA)
-   Add option for different PWM pin, to support more synth sketches
-   MIDI in, e.g. via 3.5mm jack (TRS): [A simplified guide to TRS MIDI](https://minimidi.world/)
    -  Use existing 3.5mm jacks, add pinout for optocoupler chip?
- Version using the RPi2040

## References

### Other Projects

-   [Rachel's Nightmare](https://hackaday.io/project/160042-rachels-nightmare-a-distributed-polyphonic-synth)
-   [Electronic Instrument Toolkit](https://hackaday.io/project/9842-electronic-instrument-toolkit)
-   [Wee Noise Maker](https://hackaday.io/project/19326-wee-noise-maker) ([GitHub Repo](https://github.com/Fabien-Chouteau/Wee-Noise-Maker), [Blog Post](https://fabien-chouteau.github.io/Wee-Noise-Maker/))
