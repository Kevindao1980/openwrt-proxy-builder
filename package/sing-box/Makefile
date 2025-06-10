include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/SagerNet/sing-box.git
PKG_SOURCE_VERSION:=main
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/sing-box
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Sing-box proxy tool
  DEPENDS:=+libc +libpthread
endef

define Package/sing-box/description
  Fast and powerful proxy platform supporting VLESS, trojan, socks5, tun, ss2022...
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)
endef

define Package/sing-box/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sing-box $(1)/usr/bin/
endef

$(eval $(call BuildPackage,sing-box))
