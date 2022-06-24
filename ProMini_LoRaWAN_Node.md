---
layout: project
title: ProMini LoRaWAN Node
permalink: /wiki/ProMini_LoRaWAN_Node

project:
  name: ProMini LoRaWAN Node
  status: stable
  image: /images/promini_lorawan_node/ProMini-0.2-PCB.jpg
  description: A LoRaWAN node based on the Arduino ProMini and the RFM95 LoRa module.
  author:
  username:
  version: 0.2
  update: 2019-10-22
  platform: Arduino ProMini
  license: CC BY-SA 4.0
  download: "[GitHub](https://github.com/makervan/promini-node)"
  shop: "[Tindie](https://www.tindie.com/products/makervan/promini-lorawan-node-pcb/)"
---
A LoRaWAN node based on the Arduino ProMini and the RFM95 LoRa module.
Based on the original design by Doug Larue, but with some additional
options:

-   u.FL antenna connector
-   Grove connector for I2C (can also be used for analog or digital
    signals)
-   Circuitry to measure input voltage

{% include image-gallery.html folder="/images/promini_lorawan_node" %}

## Parts

**Note**: Antenna and LoRaWAN module are dependent on the local
frequency band used for LoRaWAN. The selected items are meant for
868Mhz, which is the frequency band for Europe

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
<td><p>ProMini LoRaWAN Node PCB v0.2</p></td>
<td><p><a
href="https://www.tindie.com/products/makervan/promini-lorawan-node-pcb/">Tindie</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Arduino</p></td>
<td><p>Pro Mini, 3.3V, 8Mhz</p></td>
<td><p><a href="https://www.digikey.com/short/z310w9">DigiKey</a><br />
<a href="https://www.amazon.de/dp/B00NWF2DAU?tag=tiefpunkt-29">Amazon
US</a><br />
<a
href="https://www.amazon.de/gp/product/B018Y2JGDC?ie=UTF8&amp;tag=tiefpunkt-21&amp;camp=1638&amp;linkCode=xm2&amp;creativeASIN=B018Y2JGDC">Amazon
DE</a><br />
<a
href="https://www.aliexpress.com/wholesale?SearchText=arduino+pro+mini+3.3v">AliExpress</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Antenna</p></td>
<td><p>868Mhz SMA</p></td>
<td><p><a href="https://www.digikey.com/short/z31vhd">DigiKey</a><br />
<a
href="https://www.amazon.com/gp/product/B01K1RWAFY?ie=UTF8&amp;tag=tiefpunkt-20&amp;camp=1789&amp;linkCode=xm2&amp;creativeASIN=B01K1RWAFY">Amazon
US</a><br />
<a
href="https://www.amazon.de/gp/product/B01E564GLI?ie=UTF8&amp;tag=tiefpunkt-21&amp;camp=1638&amp;linkCode=xm2&amp;creativeASIN=B01E564GLI">Amazon
DE</a><br />
<a
href="https://www.aliexpress.com/item/32688049266.html">AliExpress</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Antenna Connector</p></td>
<td><p>SMA Edge mount</p></td>
<td><p><a href="https://www.digikey.com/short/z31vpt">DigiKey</a><br />
<a
href="https://www.amazon.com/gp/product/B07V54598M?ie=UTF8&amp;tag=tiefpunkt-20&amp;camp=1789&amp;linkCode=xm2&amp;creativeASIN=B07V54598M">Amazon
US</a><br />
<a
href="https://www.amazon.de/gp/product/B01LY3Q486?ie=UTF8&amp;tag=tiefpunkt-21&amp;camp=1638&amp;linkCode=xm2&amp;creativeASIN=B01LY3Q486">Amazon
DE</a><br />
<a
href="https://www.aliexpress.com/item/32815676763.html">AliExpress</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>u.FL surface mount</p></td>
<td><p><a
href="https://www.digikey.com/product-detail/en/te-connectivity-amp-connectors/1909763-1/A118077CT-ND/4729711">DigiKey</a></p></td>
<td><p>To connect an SMA antenna, you will need a matching
pigtail</p></td>
</tr>
<tr class="even">
<td><p>LoRa Module</p></td>
<td><p>RFM95 868Mhz</p></td>
<td><p><a href="https://www.digikey.com/short/z31vrw">DigiKey</a><br />
<a
href="https://www.amazon.com/gp/product/B07VWV9R4S?ie=UTF8&amp;tag=tiefpunkt-20&amp;camp=1789&amp;linkCode=xm2&amp;creativeASIN=B07VWV9R4S&amp;th=1">Amazon
US</a><br />
<a
href="https://www.amazon.de/gp/product/B079GFD25Z?ie=UTF8&amp;tag=tiefpunkt-21&amp;camp=1638&amp;linkCode=xm2&amp;creativeASIN=B079GFD25Z">Amazon
DE</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Battery Holder</p></td>
<td><p>2x AA</p></td>
<td><p>AliExpress</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Case</p></td>
<td><p>Abzweigdose 75x75</p></td>
<td><p>Hardware store <a
href="https://www.bauhaus.info/schalterdosen-deckel/abzweigdose/p/12165125">1</a>,
[<a
href="https://www.hornbach.de/shop/Spelsberg-Abzweigkasten-SD7-75x75-mm-33290701/6060827/artikel.html">https://www.hornbach.de/shop/Spelsberg-Abzweigkasten-SD7-75x75-mm-33290701/6060827/artikel.html</a>?]</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>Input voltage measurement</em></p></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>MOSFET</p></td>
<td><p>Q1: BSS 84</p></td>
<td><p><a
href="https://www.reichelt.de/mosfet-p-ch-60v-0-17a-0-36w-sot-23-bss-84p-smd-p41443.html?&amp;trstct=pos_1&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Resistors</p></td>
<td><p>R1: 100k 0805</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-100-kohm-125-mw-1--rnd-0805-1-100k-p183275.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>R2: 150k 0805</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-150-kohm-125-mw-1--rnd-0805-1-150k-p183279.html?search=RND+0805+1+150K">Reichelt</a></p></td>
<td><p>max input voltage for this R2/R3 combination: 16V</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R3: 10k 0805</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-10-kohm-125-mw-1--rnd-0805-1-10k-p183251.html?search=RND+0805+1+10K">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Capacitor</p></td>
<td><p>C1: 100nF</p></td>
<td><p><a
href="https://www.reichelt.de/smd-vielschicht-keramikkondensator-100n-10--x7r-g0805-100n-p31879.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
</tbody>
</table>

## Attention - Common mistakes

We’ve made our fair share of mistakes already, so you don’t have to.
Keep the following things in mind:

-   If you want to use the I2C connector, make sure to solder pins A4
    and A5 on the Arduino to the PCB. They are located a bit inside the
    module, not on the outside, and most Arduinos don’t ship with the
    necessary pin headers for these two pins, so they are easy to miss.
-   Put your FTDI programmer into 3.3V mode before programming your
    node.
-   Make sure you have an antenna connected to the board before powering
    it up. Otherwise your radio module might be damaged

## Software

### LMiC

To use the [LMIC
library](https://github.com/matthijskooijman/arduino-lmic) with this
PCB, use the following pin settings:

    const lmic_pinmap lmic_pins = {
      .nss = 10,
      .rxtx = LMIC_UNUSED_PIN,
      .rst = LMIC_UNUSED_PIN,
      .dio = {4, 5, LMIC_UNUSED_PIN}
    };

Also, some cheap Arduino ProMini boards have somewhat inaccurate timing,
so it's recommended to tell the library to compensate for that by adding
the following line in your `setup()` routine:

    LMIC_setClockError(MAX_CLOCK_ERROR * 1 / 100);

## Project Ideas

### Weather Station

Add a temperature and humidity sensor and watch the weather anywhere you
like.

Example with a BME280 sensor (connected via I2C) to measure temperatue,
humidity and atmospheric pressure: [Source
Code](https://github.com/ttn-muc/promini-node-sketches/tree/master/weather_dashboard)

### Field Test Node

Add a display (I2C) and a few buttons to create a field test node
similar to the [Adeunis Field Test
Device](https://www.thethingsnetwork.org/marketplace/product/field-test-device-lorawan)

### Camper Van Monitor

Node with GPS, temperature and PIR sensor to "watch" your campervan
while you're away. Powered from your start or solar battery, which you
can also monitor while you're at it

### Other examples

-   [TijnOnlijn](https://www.thethingsnetwork.org/forum/u/TijnOnlijn)
    has created a few examples with different sensors and put the code
    up on [GitHub](https://github.com/tijnonlijn/RFM-node)
-   The folks at TTN Den Bosch created a sketch generator for
    ProMini-RFM95 LoRaWAN nodes. Make sure to choose the "RFM95 LMIC
    pins (10, 0, 4, 5, 7)" option for the radio: [Code
    Generator](https://lcd-web.nl/ttngenerator/), [TTN Forums
    thread](https://www.thethingsnetwork.org/forum/t/pro-mini-rfm95w-examples-for-different-sensors/3241/69)

## Additional information

-   Board can be powered directly from 2 AA batteries to the 3.3V input
-   [Full tutorial using this board by Frank
    Beks](https://www.thethingsnetwork.org/labs/story/creating-a-ttn-node)

## Roadmap

-   Replace the Arduino with a stock ATmega328
-   Remove the 3.3V voltage measurement section as it can also be done
    internally on the ATmega (see
    [2](https://provideyourown.com/2012/secret-arduino-voltmeter-measure-battery-voltage/))
-   Add strain-relief holes for the power connection
-   Add mounting holes
-   Support a secure element, like the ATECC608
    -   [Arduino
        Library](https://github.com/arduino-libraries/ArduinoECCX08/)
    -   [Arduino Security
        Primer](https://blog.arduino.cc/2020/07/02/arduino-security-primer/)
    -   [Tweet by @evaristegal0is about all the
        above](https://twitter.com/evaristegal0is/status/1281163535419146242)

## License

-   Licensed under Creative Commons Attribution-ShareAlike 4.0 Unported
    License (CC BY-SA 4.0)
-   Original work by [Doug Larue](https://github.com/dlarue)
