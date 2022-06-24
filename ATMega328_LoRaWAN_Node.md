---
layout: project
title: ATMega328 LoRaWAN Node
permalink: /wiki/ATMega328_LoRaWAN_Node

project:
  name: ATMega328 LoRaWAN Node
  status: beta
  image:
  description: A LoRaWAN node based on the ATMega328 and the RFM95 LoRa module.
  author:
  username:
  version: 0.4
  update: 2021-01-03
  platform: ATMega328
  license: CC BY-SA 4.0
  download:
  shop:
---
The **ATMega328 LoRaWAN Node** is the successor of the [ProMini LoRaWAN
Node](ProMini_LoRaWAN_Node "wikilink"). As the ProMini version, it is
powered by an ATMega328, running at 3.3V and 8Mhz, but instead of using
an Arduino ProMini board, it uses a barebones ATMega328. This removes
the issues of the ProMini board such as weird pin layout for the I2C
pins, the always-on LED, and the power regulator. There have been some
additional fixes to the ProMini Node board, such as:

-   Reordering the power pins so you can solder in screw connectors as
    well
-   Strain relief holes next to the power pins
-   Two mounting holes
-   No more voltage measurement for the 3.3V/Vcc bus, as this can be
    done internally on the ATMega

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
<td><p>ATMega328 LoRaWAN Node PCB v0.4</p></td>
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
<td><p><a
href="https://www.digikey.com/product-detail/en/te-connectivity-amp-connectors/1909763-1/A118077CT-ND/4729711">DigiKey</a></p></td>
<td><p>To connect an SMA antenna, you will need a matching
pigtail</p></td>
<td></td>
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
<td><p><em>Misc</em></p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Battery Holder</p></td>
<td><p>2x AA</p></td>
<td><p>AliExpress</p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Case</p></td>
<td><p>Abzweigdose 75x75</p></td>
<td><p>Hardware store <a
href="https://www.bauhaus.info/schalterdosen-deckel/abzweigdose/p/12165125">1</a>,
[<a
href="https://www.hornbach.de/shop/Spelsberg-Abzweigkasten-SD7-75x75-mm-33290701/6060827/artikel.html">https://www.hornbach.de/shop/Spelsberg-Abzweigkasten-SD7-75x75-mm-33290701/6060827/artikel.html</a>?]</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

## References

-   [Sensor Board mit
    RFM95W](http://arduino-praxis.ch/projekte-2/sensor-board-mit-rfm95w/)
-   [Arduino Pro Mini
    schematic](https://www.arduino.cc/en/uploads/Main/Arduino-Pro-Mini-schematic.pdf)
-   [Low-power battery
    measurement](https://github.com/hallard/Battery-Voltage-Measure)

## License

-   Licensed under Creative Commons Attribution-ShareAlike 4.0 Unported
    License (CC BY-SA 4.0)
