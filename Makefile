# Filename: Makefile
# Author: Olivier Sirol <czo@free.fr>
# License: GPL-2.0 (http://www.gnu.org/copyleft)
# File Created: 27 February 2024
# Last Modified: Saturday 09 May 2026, 16:36
# Edit Time: 4:00:06
# Description:
#
#        OpenWRT Makefile for usbresetwrt
#        clone of usbutils without lsusb
#        from @KERNEL/linux/utils/usb/usbutils
#
# Copyright: (C) 2024-2026 Olivier Sirol <czo@free.fr>

include $(TOPDIR)/rules.mk

PKG_NAME:=usbresetwrt
PKG_VERSION:=1
PKG_RELEASE:=3

PKG_MAINTAINER:=Olivier Sirol <czo@free.fr>
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define Package/usbresetwrt
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=USB reset only
  URL:=https://github.com/czodroid/usbresetwrt
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/usbresetwrt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/usbreset $(1)/usr/bin/
endef

$(eval $(call BuildPackage,usbresetwrt))
