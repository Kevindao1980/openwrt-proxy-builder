include $(TOPDIR)/rules.mk

PKG_NAME:=redsocks2
PKG_VERSION:=0.72
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/semigodking/redsocks.git
PKG_SOURCE_VERSION:=master
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk

define Package/redsocks2
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Redirect TCP to proxy
  DEPENDS:=+libpthread +librt
endef

define Package/redsocks2/description
  A modified redsocks supporting socks5 UDP and improved auth
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)
endef

define Package/redsocks2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/redsocks2 $(1)/usr/bin/
endef

$(eval $(call BuildPackage,redsocks2))
