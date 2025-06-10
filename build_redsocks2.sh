#!/bin/sh
# Build redsocks2 cho OpenWrt SDK kernel 6.6.35

cd openwrt-sdk

# Tải feeds nếu chưa có
./scripts/feeds update -a
./scripts/feeds install -a

# Copy mã nguồn redsocks2 vào SDK
mkdir -p package/redsocks2
cp -r ../package/redsocks2/* package/redsocks2/

# Biên dịch gói
make package/redsocks2/compile V=s
