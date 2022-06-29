---
layout: project
title: LoRaWAN Battery Monitor
permalink: /wiki/LoRaWAN_Battery_Monitor

project:
  name: LoRaWAN Battery Monitor
  status: experimental
  image:
  description: LiPo battery monitor to regularly check cell voltages
  author:
  username:
  version: 0.1
  update: 2021-01-03
  platform: ATMega328
  license: CC BY-SA 4.0
  download:
  shop:
  social:
    hackaday: https://hackaday.io/project/176914-lorawan-battery-pack-monitor
---
The **LoRaWAN Battery Monitor** is a LoRaWAN connected device based on
the [ATMega328 LoRaWAN Node](/wiki/ATMega328_LoRaWAN_Node) to
automatically measure the individual cell voltages of a Lithium Ion
battery pack (up to 7S)

## Parts

**Note**: Antenna and LoRaWAN module are dependent on the local
frequency band used for LoRaWAN. The selected items are meant for
868Mhz, which is the frequency band for Europe

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
<td><p>LoRaWAN Battery Monitor PCB v0.1</p></td>
<td><p>1</p></td>
<td><p>-</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Microcontroller</p></td>
<td><p>ATMega 328P-PU</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/8-bit-atmega-avr-mikrocontroller-32-kb-20-mhz-pdip-28-atmega-328p-pu-p119685.html?search=atmega+328">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>IC socket</p></td>
<td><p>28pin</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/ic-sockel-28-polig-doppelter-federkontakt-gs-28-s-p86281.html?&amp;trstct=pol_1&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Quartz</p></td>
<td><p>8Mhz, HC49U-S</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/standardquarz-grundton-8-000000-mhz-8-0000-hc49u-s-p32845.html?&amp;trstct=pol_1&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Resistor</p></td>
<td><p>R4: 10k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-10-kohm-125-mw-1--rnd-0805-1-10k-p183251.html?search=RND+0805+1+10K">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Capacitors</p></td>
<td><p>C4, C5: 22pF</p></td>
<td><p>2</p></td>
<td><p><a
href="https://www.reichelt.de/smd-vielschicht-keramikkondensator-22p-5--npo-g0805-22p-p13517.html?&amp;trstct=pol_2&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>C6, C7: 100nF</p></td>
<td><p>2</p></td>
<td><p><a
href="https://www.reichelt.de/smd-vielschicht-keramikkondensator-100n-10--x7r-g0805-100n-p31879.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Reset button</p></td>
<td><p>SW1</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/kurzhubtaster-6x6mm-hoehe-4-3mm-12v-vertikal-taster-3301-p27892.html?&amp;trstct=pol_15&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>Measurement</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Resistor</p></td>
<td><p>R5: 10k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-10-kohm-125-mw-1--rnd-0805-1-10k-p183251.html?search=RND+0805+1+10K">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R6: 33k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-33-kohm-125-mw-1--rnd-0805-1-33k-p183263.html?search=RND+0805+1+33k">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>R7: 75k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-75-kohm-125-mw-1--rnd-0805-1-75k-p183272.html?search=0805+75k">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R8: 110k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-110-kohm-125-mw-1--rnd-0805-1-110k-p183276.html?search=0805+110k">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>R9: 160k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-160-kohm-125-mw-1--rnd-0805-1-160k-p212715.html?search=0805+160k">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R10: 200k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-200-kohm-125-mw-1--rnd-0805-1-200k-p183281.html?search=0805+200k">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>R11: 240k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-240-kohm-330-mw-1--rnd-155hp05-bx-p250766.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R12: 270k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-270-kohm-125-mw-1--rnd-0805-1-270k-p183284.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Multiplexer</p></td>
<td><p>U4: 74HC 4051 (SO-16)</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/multi-demultiplexer-8-ch-2--6-v-so-16-74hc-4051d-nxp-p219248.html?&amp;trstct=pos_2&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>Voltage regulator for &gt;3.3V input</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Voltage Regulator</p></td>
<td><p>U3: 3.3V, LDO, TO-92 -&gt; LP2950-3.3</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/ldo-regler-fest-3-3-v-to-92-lp-2950-acz3-3-p122756.html?CCOUNTRY=445&amp;LANGUAGE=de">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Capacitor</p></td>
<td><p>C2, C3: 4,7µF Elko, &gt;16V</p></td>
<td><p>2</p></td>
<td><p><a
href="https://www.reichelt.de/elko-radial-4-7-f-100v-rm2-5-1000h-105-c-20--rad-105-4-7-100-p44857.html?&amp;trstct=pol_1&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p><em>LoRa Modem section</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Antenna</p></td>
<td><p>868Mhz SMA</p></td>
<td><p>1</p></td>
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
<td><p>1</p></td>
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
<td><p>1</p></td>
<td><p><a
href="https://www.digikey.com/product-detail/en/te-connectivity-amp-connectors/1909763-1/A118077CT-ND/4729711">DigiKey</a></p></td>
<td><p>To connect an SMA antenna, you will need a matching
pigtail</p></td>
</tr>
<tr class="even">
<td><p>LoRa Module</p></td>
<td><p>RFM95 868Mhz</p></td>
<td><p>1</p></td>
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
<td><p><em>Input voltage measurement</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>MOSFET</p></td>
<td><p>Q1: BSS 84</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/mosfet-p-ch-60v-0-17a-0-36w-sot-23-bss-84p-smd-p41443.html?&amp;trstct=pos_1&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Resistors</p></td>
<td><p>R1: 100k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-100-kohm-125-mw-1--rnd-0805-1-100k-p183275.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td></td>
<td><p>R2: 150k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-150-kohm-125-mw-1--rnd-0805-1-150k-p183279.html?search=RND+0805+1+150K">Reichelt</a></p></td>
<td><p>max input voltage for this R2/R3 combination: 16V</p></td>
</tr>
<tr class="odd">
<td></td>
<td><p>R3: 10k 0805</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-widerstand-0805-10-kohm-125-mw-1--rnd-0805-1-10k-p183251.html?search=RND+0805+1+10K">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Capacitor</p></td>
<td><p>C1: 100nF</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/smd-vielschicht-keramikkondensator-100n-10--x7r-g0805-100n-p31879.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
<tr class="odd">
<td><p><em>Connectors</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>ISP</p></td>
<td><p>J1: 2x3, 2.54mm</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/rnd-stiftleiste-8-pol-rm-2-54-mm-rnd-205-00635-p208861.html?&amp;trstct=pol_0&amp;nbc=1">Reihelt</a></p></td>
<td><p>2x4 connector is much cheaper than 2x3, but you can simply cut
off one section</p></td>
</tr>
<tr class="odd">
<td><p>Pin headers</p></td>
<td><p>P3, P5, P6, P9, P10</p></td>
<td><p>(many pins)</p></td>
<td><p><a
href="https://www.reichelt.de/36pol-stiftleiste-gerade-rm-2-54-sl-1x36g-2-54-p19504.html?&amp;trstct=pol_12&amp;nbc=1">Reichelt</a></p></td>
<td><p>Just get one long row, and cut off those you need</p></td>
</tr>
<tr class="even">
<td><p>Screw terminals (Power In)</p></td>
<td><p>P2 (outer pins): 2 pole, 5.08mm</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/loetbare-schraubklemme-2-pol-rm-5-08-mm-90--rnd-205-00232-p170277.html?&amp;trstct=pol_3&amp;nbc=1">Reichelt</a></p></td>
<td><p>only if using voltage regulator</p></td>
</tr>
<tr class="odd">
<td><p>Battery connector</p></td>
<td><p>J2: 14pin</p></td>
<td><p>1</p></td>
<td><p><a
href="https://www.reichelt.de/pfostenstecker-16-pol-vergoldet-gerade-rnd-205-00831-p252343.html?&amp;trstct=pol_0&amp;nbc=1">Reichelt</a></p></td>
<td></td>
</tr>
</tbody>
</table>

## Notes

-   Splitting the voltage divider as I did didn't work out, due to the
    protection diodes and other circuitry within the 4051. There have to
    be full voltage dividers "in front" of the multiplexer, basically
    adding a 10kΩ resistor to ground on R6-R12. This leads to continuous
    power consumption. Scaling up the resistors should help though.
    -   Recommendation on twitter was to use the
        [BQ76930](https://www.ti.com/product/BQ76930#product-details##pps)
        chip by TI as an alternative. Looks very interesting, but I
        think I'll go with the voltage dividers for now. Power
        consumption shouldn't be that big of a deal in this case.

## Links

-   [HackADay.io
    project](https://hackaday.io/project/176914-lorawan-battery-pack-monitor)
-   [Building the Prototype Twitter
    Thread](https://twitter.com/tiefpunkt/status/1352664602727866370)
-   [Fixing things Twitter
    thread](https://twitter.com/tiefpunkt/status/1353082157317689345)

## License

-   Licensed under Creative Commons Attribution-ShareAlike 4.0 Unported
    License (CC BY-SA 4.0)
