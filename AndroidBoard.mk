#-------------------------------------
# linux kernel compile
# -----------------------------------
#

ifneq ($(TARGET_USE_PREBUILT_KERNEL), true)

KERNEL_DEFCONFIG := mako_defconfig
include kernel/AndroidKernel.mk

$(INSTALLED_KERNEL_TARGET): $(TARGET_PREBUILT_KERNEL) | $(ACP) $(TARGET_PREBUILT_KERNEL_INCLUDE)
	$(transform-prebuilt-to-target)

endif

