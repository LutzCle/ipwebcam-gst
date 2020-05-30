#!/usr/bin/env bash
#
# NixOS system config necessary:
#
# services.adb.enable = true;
# users.extraUsers.$name.extraGroups = [ "adbusers" ];
# boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];

nix-shell -p lsb-release -p gnome3.zenity -p v4l-utils -p gst_all_1.gstreamer.dev -p gst_all_1.gst-plugins-good -p gst_all_1.gst-plugins-base --run 'bash ./prepare-videochat.sh'
