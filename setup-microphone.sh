#!/usr/bin/env bash
# https://github.com/gimpf/talon-config/blob/master/utils/setup-microphone.sh

# thanks to
# https://askubuntu.com/questions/17791/can-i-downmix-stereo-audio-to-mono
# https://dx9s.net/node/32
# https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/Modules/#module-tunnel-sinksource


master_input="alsa_input.usb-Andrea_Electronics_Andrea_Comm_USB-SA_Headset_SEP_2015-00.analog-stereo"
# monitor_output=$(pacmd list-sinks | sed -nre 's/\s+name: <(alsa_output.*focusrite.*analog-stereo)>/\1/ip')

echo Monoize...
pacmd load-module module-remap-source \
    source_name=andrea-input-mono \
    source_properties="device.description=\"Left\ channel\ of\ Andrea\ Adapter\"" \
    "master=${master_input}" \
    master_channel_map=front-left \
    channels=1 \
    channel_map=mono \
    remix=no \
    # rate=44100 \