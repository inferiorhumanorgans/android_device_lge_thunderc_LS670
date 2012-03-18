# We're on Sprint
CDMA_GOOGLE_BASE := android-sprint-us
CDMA_CARRIER_ALPHA := Sprint
CDMA_CARRIER_NUMERIC := 310120
BLUETOOTH_FIRMWARE := BCM4325D1_004.002.004.0218.0248.hcd
SUB_MODEL := LS670

# Call the common thunderc stuff first to avoid a lot of duplication.
$(call inherit-product, device/lge/thunderc_common/thunderc_common.mk)

# Add in model specific kernel modules
PRODUCT_COPY_FILES += \
    device/lge/thunderc_LS670/files/kernel/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderc_LS670/files/kernel/tun.ko:system/lib/modules/tun.ko
