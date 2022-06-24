---
layout: project
title: MicroGrid Power Meter LoRaWAN connector
permalink: /wiki/MicroGrid_Power_Meter_LoRaWAN_connector

project:
  name: MicroGrid Power Meter LoRaWAN connector Node
  status: beta
  image: /images/Dc_powermeter_lorawan_01.png
  description: "An adapted version of the [ProMini LoRaWAN Node](ProMini_LoRaWAN_Node) to transmit power meter data via LoRaWAN"
  author:
  username:
  version: 0.1
  update: 2019-10-29
  platform: Arduino ProMini
  license: CC BY-SA 4.0
  download: "[GitHub](https://github.com/makervan/powermeter-lorawan-connector)"
  shop:
---
An adapted version of the [ProMini LoRaWAN Node](ProMini_LoRaWAN_Node), to connect to a GC90/91 DC power
meter and transmit its readings via LoRaWAN. A short overview of the
used hardware and features:

-   Arduino Pro Mini (Atmega328, 8Mhz, 3.3V)
-   RFM95 LoRa Module
-   Levelshifter and USB connector to interface with the GC9x series
    power meters
-   u.FL antenna connector
-   Grove connector for I2C (can also be used for analog or digital
    signals)
-   Circuitry to measure input voltage

## Roadmap

-   Add firmware to repository
-   Put kit on Tindie
-   Test/Support other GC9x series meters
-   Replace power meter completely, take measurements ourself (e.g. [DIY
    Arduino Multifunction Energy
    Meter](https://www.instructables.com/DIY-Arduino-Multifunction-Energy-Meter/)
