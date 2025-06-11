PRODUCT_VERSION_MAJOR = 15
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
CR_VERSION := 11.6

# Internal version
LINEAGE_VERSION := GazaOS-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(CR_VERSION)-$(BUILD_TYPE)
=======
LINEAGE_VERSION := custom-crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date +%Y%m%d)-$(LINEAGE_BUILD)-v$(CR_VERSION)-$(BUILD_TYPE)-$(shell date +%H%M)

# Display version
LINEAGE_DISPLAY_VERSION := v$(CR_VERSION)-$(shell date +%Y%m%d)

# LineageOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.crdroid.build.version=$(CR_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# Include cr.mk to Set 
BUILD_TYPE
include vendor/lineage/config/crdroid.mk
