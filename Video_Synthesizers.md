---
layout: project
title: Video Synthesizers
permalink: /wiki/Video_Synthesizers

project:
  name: Video Synthesizers
  status: experimental
  image: /images/videosynth01.jpg
  description: Generating and glitching video signals in funky ways
  version:
  update:
  platform:
  license:
  download:
  shop:
  social:
    hackaday:
    github:
---
Video synthesizers generate or modify video to look somewhat weirdly,
and have it react to external sources, e.g. an audio signal.

## Research

Trying to figure out what people have done and documented already.

### Modify an incoming signal {#modify_an_incoming_signal}

-   <http://jameshconnolly.com/vgasynthesizer.html>
    -   <http://jameshconnolly.com/projects/rgb-vga-volt/audiointovideo2014.pdf>
-   <http://www.mediumrecords.com/vs0/vs001.html>
-   <http://lushprojects.com/videobend/>
-   <https://web.archive.org/web/20070121021907/http://www.web-ee.com/Electronic-Projects/projects/video_effect/index.shtml>
-   <http://www.epanorama.net/links/videocircuits.html>
-   <http://karlklomp.nl/pro/vbend.html>

### Generate a new signal from scratch {#generate_a_new_signal_from_scratch}

-   <http://gieskes.nl/visual-equipment/?file=oscillatoscope2>
    -   <https://ask.audio/articles/oscillatoscope-2b-converts-cv-and-audio-into-glorious-vga-visuals>
-   Good description on how to generate VGA signal using logic chips
    (see the logs):
    <https://hackaday.io/project/9782-nes-zapper-video-synth-theremin>
-   <https://bleeplabs.com/store/3trinsrgb1/>
    -   <http://gieskes.nl/instruments/?file=3TrinsRGB1>
    -   <https://hackaday.com/2018/10/24/av-synth-is-psychedelic-analog-mayhem/>
-   <https://bleeplabs.com/store/hss3jb/>
    -   <http://gieskes.nl/visual-equipment/?file=oscillatoscope2>
-   <https://jonasbers.com/chav/>
    -   <http://themidithief.com/2016/11/the-chav/>
-   <http://brunolevy.com/videos/2014-2/vs-iii-video-synthesizer>
-   <http://www.akirasrebirth.com/2014/03/videosynthhm2-proto-arduino-due-video.html>
    -   <https://stimmer.github.io/DueVGA/>
-   <http://arcanebolt.net/>
    -   Schematic: <http://arcanebolt.net/page/4>
    -   Source Code: <http://github.com/tamask/arcanebolt/>
    -   <https://www.flickr.com/photos/tamaskemenczy/3782055803/in/album-72157620283664445/>
-   <http://little-scale.blogspot.de/2009/04/how-to-use-arduino-to-generate-glitchy.html>
-   <https://github.com/smaffer/vgax>
    -   ESP Version: <https://github.com/smaffer/espvgax>
-   <https://hackaday.io/project/29965-vga-video-synth>
### VGA Booster/Splitter {#vga_boostersplitter}

-   <http://www.wiringdiagrams21.com/2010/11/14/video-vga-splitter-circuit-diagram-using-ecg2322/>
    (Uses obsolete part)
-   <http://streampowers.blogspot.de/2013/05/simple-vga-monitor-splitter-and.html>

## Experiments

### Glitch video with an audio signal {#glitch_video_with_an_audio_signal}

Basically following [this
guide](http://jameshconnolly.com/projects/rgb-vga-volt/audiointovideo2014.pdf).

#### Diodes, direct {#diodes_direct}

Setup as described in the guide
```
Laptop VGA Out ---> VGA+Audio Merger with Diodes ---> Monitor
Laptop Audio Out ----------^
```

Doesn\'t work, laptop turns off the VGA out.

#### Diodes, with VGA \"Booster\" {#diodes_with_vga_booster}

As above, but using a VGA matrix we had in the space as a VGA buffer

```
Laptop VGA Out --> VGA Matrix --> VGA+Audio Merger with Diodes ---> Monitor
Laptop Audio Out ---------------------^
```

Works, audio signal a bit weak, not as much effect, also video signal is
attenuated compared to video directly from the VGA out.

#### Audio mixer & EQ {#audio_mixer_eq}

Adding an audio mixer between the Laptop and the VGA+Audio merger allows
to control the \"volume\" better, and allows to use the EQ of the mixer
to influence the signal.

```
Laptop VGA Out --> VGA Matrix --> VGA+Audio Merger with Diodes ---> Monitor
Laptop Audio Out --> Audio Mixer & EQ ---^
```

The EQ is fun to work with, smaller lines with the high pass, bigger
lines with the low pass filters. Control over the volume of the signal
is also great. As a side effect, you can also listen to the audio signal
now.

#### No more diodes {#no_more_diodes}

Left out the diodes in favour of direct connection between matrix and
monitor.

```
Laptop VGA Out --> VGA Matrix --> VGA+Audio Merger w/o Diodes ---> Monitor
Laptop Audio Out --> Audio Mixer & EQ ---^
```

All still works, and the original video signal is much clearer now. Best
thing so far.
