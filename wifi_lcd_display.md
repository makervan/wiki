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
  download: "[GitHub](https://github.com/tiefpunkt/wifi_lcd)"
#  shop: "[Tindie](https://www.tindie.com/products/makervan/synthiboard/)"
  social:
#    hackaday: https://hackaday.io/project/177597-synthiboard
    github: https://github.com/tiefpunkt/wifi_lcd
---

An ESP8266 powered text based LCD display. Connects to an MQTT broker. Supports multiple pages (currently 8). Operated with a single button.

## Hardware
* ESP8266 (I used a Wemos D1 dev board)
* HD44780 based LCD display - 16x2 in this case, other sizes will need code adjustments.
  * Pin assignment:
    * Reset - GPIO 12
	* Enable - GPIO 13
	* D4 - GPIO 16
	* D5 - GPIO 5
	* D6 - GPIO 4
	* D7 - GPIO 14
* A single button, connected to GPIO 0 (with pullup)

## Software
* Copy ```config.h.sample``` to ```config.h``` and adjust settings
* Flash to ESP using Arduino IDE

## Usage
* Message to display immediately: Send text to ```<MQTT_TOPIC_BASE>/text```
* Paging: Send text to ```<MQTT_TOPIC_BASE>/page/<PAGENAME>/text```
  * Page name is limited to 8 characters
  * If a page already exists, it's overwritten
  * If a page does not exist, it's created. If the page buffer is full, the oldest page (in terms of the last update to a page) is overwritten.

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
