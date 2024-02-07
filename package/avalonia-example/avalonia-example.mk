################################################################################
#
# avalonia-example
#
################################################################################

ifeq ($(BR2_x86_64),y)
ifeq ($(BR2_TOOLCHAIN_USES_MUSL),y)
AVALONIA_EXAMPLE_IDENTIFIER = linux-musl-x64
else
AVALONIA_EXAMPLE_IDENTIFIER = linux-x64
endif
else ifeq ($(BR2_arm),y)
AVALONIA_EXAMPLE_IDENTIFIER = linux-arm
else ifeq ($(BR2_aarch64),y)
ifeq ($(BR2_TOOLCHAIN_USES_MUSL),y)
else
AVALONIA_EXAMPLE_IDENTIFIER = linux-arm64
endif
endif

ifeq ($(AVALONIA_EXAMPLE_IDENTIFIER),)
$(error "Target platform is not supported by dotnet")
endif


define AVALONIA_EXAMPLE_INSTALL_TARGET_CMDS
	cp $(AVALONIA_EXAMPLE_PKGDIR)/overlay/S90startAvaloniaApp $(TARGET_DIR)/etc/init.d
	cp -R $(AVALONIA_EXAMPLE_PKGDIR)/overlay/opt $(TARGET_DIR)
	mkdir -p $(TARGET_DIR)/opt/publish/runtimes/
	cp -R $(AVALONIA_EXAMPLE_PKGDIR)/overlay/runtimes/$(AVALONIA_EXAMPLE_IDENTIFIER) $(TARGET_DIR)/opt/publish/runtimes/$(AVALONIA_EXAMPLE_IDENTIFIER)
endef

$(eval $(generic-package))