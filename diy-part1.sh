#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#cpu clock 1100Mhz setup
rm openwrt/target/linux/ramips/patches-5.10/322-mt7621-fix-cpu-clk-add-clkdev.patch && wget -P openwrt/target/linux/ramips/patches-5.10/ https://raw.githubusercontent.com/GreyFlorence/Immortalwrt_mtk/main/322-mt7621-fix-cpu-clk-add-clkdev.patch
