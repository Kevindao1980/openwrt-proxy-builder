#!/bin/sh
cd openwrt-sdk
mkdir -p package/ipt2socks
cp -r ../package/ipt2socks/* package/ipt2socks/
make package/ipt2socks/compile V=s
