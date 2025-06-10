#!/bin/sh
cd openwrt-sdk
mkdir -p package/sing-box
cp -r ../package/sing-box/* package/sing-box/
make package/sing-box/compile V=s
