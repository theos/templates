ARCHS = armv7 arm64

THEOS_BUILD_DIR = Packages
THEOS_OBJ_DIR_NAME = obj

include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = Tweak.xm
@@PROJECTNAME@@_LOGOSFLAGS = -c generator=internal
@@PROJECTNAME@@_INSTALL_PATH = @executable_path

include $(THEOS_MAKE_PATH)/tweak.mk

after-all::
	$(ECHO_NOTHING) echo " Moving Dylib..."$(ECHO_END)
	$(ECHO_NOTHING) mkdir ./dylib/ $(ECHO_END)
	$(ECHO_NOTHING) cp -v $(THEOS_OBJ_DIR)/@@PROJECTNAME@@.dylib ./dylib/ $(ECHO_END)
	$(ECHO_NOTHING)echo " Dylib Moved"$(ECHO_END)