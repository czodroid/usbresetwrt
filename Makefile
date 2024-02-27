# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 27 February 2024
# Last Modified: Tuesday 27 February 2024, 18:25
# Edit Time: 3:51:03
# Description:
#
#        OpenWRT Makefile for usbreset
#        Clone of usbreset
#
# Copyright: (C) 2024 Olivier Sirol <czo@free.fr>

include $(TOPDIR)/rules.mk

PKG_NAME:=usbreset
PKG_VERSION:=1
PKG_RELEASE:=2

PKG_MAINTAINER:=Olivier Sirol <czo@free.fr>
PKG_LICENSE:=GPL-2.0-only

include $(INCLUDE_DIR)/package.mk

# DEPENDS:=+libusb-1.0 +libudev +usbids +librt +libpthread

define Package/usbreset
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=USB reset
  URL:=https://github.com/czodroid/usbreset
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/usbreset/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/usbreset $(1)/usr/bin/
endef

$(eval $(call BuildPackage,usbreset))
