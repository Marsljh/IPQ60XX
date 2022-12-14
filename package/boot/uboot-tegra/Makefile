#
# Copyright (C) 2017-2019 Tomasz Maciej Nowak <tomek_n@o2.pl>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_VERSION := 2019.04
PKG_RELEASE := 1

PKG_HASH := 76b7772d156b3ddd7644c8a1736081e55b78828537ff714065d21dbade229bef

PKG_MAINTAINER := Tomasz Maciej Nowak <tomek_n@o2.pl>

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET := tegra
  HIDDEN := y
endef

define U-Boot/trimslice
  NAME := CompuLab TrimSlice
  BUILD_DEVICES := compulab_trimslice
  UBOOT_IMAGE := trimslice-mmc.img trimslice-spi.img
  SOC := tegra20
  VENDOR := compulab
endef

UBOOT_TARGETS := trimslice

define Build/bct-image
	$(CP) $(PKG_BUILD_DIR)/u-boot-dtb-tegra.bin $(PKG_BUILD_DIR)/u-boot.bin
	$(foreach bct,$(basename $(UBOOT_IMAGE)), \
		cd $(PKG_BUILD_DIR); \
		cbootimage -s $(SOC) -gbct \
			$(STAGING_DIR_HOST)/share/cbootimage-configs/$(SOC)/$(VENDOR)/$(VARIANT)/$(bct).bct.cfg \
			$(bct).bct; \
		cbootimage -s $(SOC) \
			$(STAGING_DIR_HOST)/share/cbootimage-configs/$(SOC)/$(VENDOR)/$(VARIANT)/$(bct).img.cfg \
			$(PKG_BUILD_DIR)/$(bct).img; \
		rm -f $(bct).bct; \
	)
endef

define Build/Configure
	sed '/select BINMAN/d' -i $(PKG_BUILD_DIR)/arch/arm/mach-tegra/Kconfig
	$(call Build/Configure/U-Boot)
endef

define Build/Compile
	$(call Build/Compile/U-Boot)
	$(call Build/bct-image)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(foreach img,$(UBOOT_IMAGE), \
		$(CP) $(PKG_BUILD_DIR)/$(img) $(STAGING_DIR_IMAGE)/;)
endef

$(eval $(call BuildPackage/U-Boot))
