#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/community.cypress.com\/gfawx74859\/attachments\/gfawx74859\/resourcelibrary\/1016\/1/raw.githubusercontent.com\/meishimeike\/Actions-OpenWrt\/main\/Drivers/g' package/firmware/cypress-firmware/Makefile
sed -i 's/v5.4.18-2020_0402/v5.4.18-2020_0925/g' package/firmware/cypress-firmware/Makefile
#sed -i 's/19375-1-53475/21490-1-58574/g' package/firmware/cypress-firmware/Makefile
sed -i 's/firmware\/brcmfmac/firmware\/cyfmac/g' package/firmware/cypress-firmware/Makefile
sed -i 's/b12b0570f462c2f3c26dde98b10235a845a7109037def1e7e51af728bcc1a958/fb71c344e705f5bc9fdae3ce0fbfa299f0af0939ff3ec782aeca0308911d830d/g' package/firmware/cypress-firmware/Makefile

# Add ChinaDNS-NG
git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/chinadns-ng
git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng

# Add smartdns
svn co https://github.com/pymumu/smartdns/trunk/package/openwrt package/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns package/luci-app-smartdns

# Add luci-app-dockerman
git clone https://github.com/KFERMercer/luci-app-dockerman package/luci-app-dockerman

# Add luci-app-adguardhome
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/luci-app-adguardhome
