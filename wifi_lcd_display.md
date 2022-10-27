---
layout: project
title: WiFi LCD Display
permalink: /wiki/wifi_lcd_display

project:
  name: WiFi LCD Display
  status: experimental
  image: /images/wifi_lcd01.jpg
  description: An ESP8266 powered text based LCD display
#  version: 0.1
#  update: 2017-08-06
  platform: ESP8266
#  license: CC BY-SA 4.0
#  download: "[GitHub](https://github.com/makervan/synthiboard)"
#  shop: "[Tindie](https://www.tindie.com/products/makervan/synthiboard/)"
  social:
#    hackaday: https://hackaday.io/project/177597-synthiboard
    github: https://github.com/tiefpunkt/wifi_lcd
---

An ESP8266 powered text based LCD display. Connects to an MQTT broker. Supports multiple pages (currently 8). Operated with a single button.

## Next Steps
* Update documentation with information about backlight control
* Add a clock
  * Using some big number library?
    * [BigNums2x2](https://www.arduino.cc/reference/en/libraries/bignums2x2/) - [Blogpost](https://www.alpenglowindustries.com/blog/the-big-numbers-go-marching-2x2#/)
    * <https://gist.github.com/ronivaldo/5587355>
    * <https://forum.arduino.cc/t/large-alphanumeric-on-lcd/8946>
    * <https://github.com/lyovav/CLOCK-LCD-16X2-BIG-FONT-v1.0>
* PCB Design
  * Add 3(?) MOSFET outputs for bigger lights?
