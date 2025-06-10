#!/bin/sh
# Tải SDK OpenWrt 6.6.35 cho CR6608 - MT7621

SDK_URL="https://downloads.openwrt.org/snapshots/targets/ramips/mt7621/openwrt-sdk-ramips-mt7621_gcc-13.2.0_musl.Linux-x86_64.tar.xz"

curl -LO "$SDK_URL"
tar -xf openwrt-sdk-ramips-mt7621_*.tar.xz
mv openwrt-sdk-ramips-mt7621* openwrt-sdk
