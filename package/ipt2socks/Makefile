include $(TOPDIR)/rules.mk

PKG_NAME:=ipt2socks
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/zfl9/ipt2socks.git
PKG_SOURCE_VERSION:=master
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/ipt2socks
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Lightweight SOCKS5/UDP relay
  DEPENDS:=+libev +libpthread +librt
endef

define Package/ipt2socks/description
  A lightweight and fast iptables-to-socks redirector
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)
endef

define Package/ipt2socks/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/ipt2socks $(1)/usr/bin/
endef

$(eval $(call BuildPackage,ipt2socks))
