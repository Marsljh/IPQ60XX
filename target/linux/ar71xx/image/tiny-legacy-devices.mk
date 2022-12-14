define LegacyDevice/F9K1115V2
  DEVICE_TITLE := Belkin AC1750DB (F9K1115V2)
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb3 kmod-usb-ledtrig-usbport \
        kmod-ath10k-ct ath10k-firmware-qca988x-ct
endef
LEGACY_DEVICES += F9K1115V2

define LegacyDevice/DIR600A1
  DEVICE_TITLE := D-Link DIR-600 rev. A1
endef
LEGACY_DEVICES += DIR600A1

define LegacyDevice/DIR601A1
  DEVICE_TITLE := D-Link DIR-601 rev. A1
endef
LEGACY_DEVICES += DIR601A1

define LegacyDevice/FR54RTR
  DEVICE_TITLE := Frys FR-54RTR
endef
LEGACY_DEVICES += FR54RTR

define LegacyDevice/EBR2310C1
  DEVICE_TITLE := D-Link EBR-2310 rev. C1
endef
LEGACY_DEVICES += EBR2310C1

define LegacyDevice/DIR615E1
  DEVICE_TITLE := D-Link DIR-615 rev. E1
endef
LEGACY_DEVICES += DIR615E1

define LegacyDevice/DIR615E4
  DEVICE_TITLE := D-Link DIR-615 rev. E4
endef
LEGACY_DEVICES += DIR615E4

define LegacyDevice/DIR615I1
  DEVICE_TITLE := D-Link DIR-615 rev. I1
endef
LEGACY_DEVICES += DIR615I1

define LegacyDevice/DIR615I3
  DEVICE_TITLE := D-Link DIR-615 rev. I3
endef
LEGACY_DEVICES += DIR615I3

define LegacyDevice/A02RBW300N
  DEVICE_TITLE := Atlantis-Land A02-RB-W300N
endef
LEGACY_DEVICES += A02RBW300N

define LegacyDevice/DIR615C1
  DEVICE_TITLE := D-Link DIR-615 rev. C1
endef
LEGACY_DEVICES += DIR615C1

define LegacyDevice/TEW632BRP
  DEVICE_TITLE := TRENDNet TEW-632BRP
endef
LEGACY_DEVICES += TEW632BRP

define LegacyDevice/TEW652BRP_FW
  DEVICE_TITLE := TRENDNet TEW-652BRP
endef
LEGACY_DEVICES += TEW652BRP_FW

define LegacyDevice/TEW652BRP_RECOVERY
  DEVICE_TITLE := TRENDNet TEW-652BRP (recovery)
endef
LEGACY_DEVICES += TEW652BRP_RECOVERY

define LegacyDevice/TEW712BR
  DEVICE_TITLE := TRENDNet TEW-712BR
endef
LEGACY_DEVICES += TEW712BR

define LegacyDevice/DIR601B1
  DEVICE_TITLE := D-Link DIR-601 rev. B1
endef
LEGACY_DEVICES += DIR601B1

define LegacyDevice/WP543_4M
  DEVICE_TITLE := Compex WP543/WPJ543 (4MB flash)
  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
endef
LEGACY_DEVICES += WP543_4M

define LegacyDevice/WPE72_4M
  DEVICE_TITLE := Compex WPE72/WPE72NX (4MB flash)
  DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2
endef
LEGACY_DEVICES += WPE72_4M

define LegacyDevice/WNR2000
  DEVICE_TITLE := NETGEAR WNR2000V1
endef
LEGACY_DEVICES += WNR2000

define LegacyDevice/WNR2000V3
  DEVICE_TITLE := NETGEAR WNR2000V3
endef
LEGACY_DEVICES += WNR2000V3

define LegacyDevice/WNR2000V4
  DEVICE_TITLE := NETGEAR WNR2000V4
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
  DEFAULT := n
endef
LEGACY_DEVICES += WNR2000V4

define LegacyDevice/REALWNR612V2
  DEVICE_TITLE := NETGEAR WNR612V2
  DEFAULT := n
endef
LEGACY_DEVICES += REALWNR612V2

define LegacyDevice/N150R
  DEVICE_TITLE := On Networks N150
  DEFAULT := n
endef
LEGACY_DEVICES += N150R

define LegacyDevice/REALWNR1000V2
  DEVICE_TITLE := NETGEAR WNR1000V2
endef
LEGACY_DEVICES += REALWNR1000V2

define LegacyDevice/WNR1000V2_VC
  DEVICE_TITLE := NETGEAR WNR1000V2-VC
endef
LEGACY_DEVICES += WNR1000V2_VC

define LegacyDevice/WPN824N
  DEVICE_TITLE := NETGEAR WPN824N
endef
LEGACY_DEVICES += WPN824N

define LegacyDevice/WHRG301N
  DEVICE_TITLE := Buffalo WHR-G301N
endef
LEGACY_DEVICES += WHRG301N

define LegacyDevice/WHRHPG300N
  DEVICE_TITLE := Buffalo WHR-HP-G300N
endef
LEGACY_DEVICES += WHRHPG300N

define LegacyDevice/WHRHPGN
  DEVICE_TITLE := Buffalo WHR-HP-GN
endef
LEGACY_DEVICES += WHRHPGN

define LegacyDevice/WLAEAG300N
  DEVICE_TITLE := Buffalo WLAE-AG300N
  DEVICE_PACKAGES := kmod-ledtrig-netdev
endef
LEGACY_DEVICES += WLAEAG300N

define LegacyDevice/NBG_460N_550N_550NH
  DEVICE_TITLE := ZyXEL NBG 460N/550N/550NH
  DEVICE_PACKAGES := kmod-rtc-pcf8563
endef
LEGACY_DEVICES += NBG_460N_550N_550NH
