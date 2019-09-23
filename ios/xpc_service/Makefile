THEOS_LEAN_AND_MEAN = 1
include @@THEOS@@/makefiles/common.mk

TOOL_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = main.m
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk

after-@@PROJECTNAME@@-stage::
	$(ECHO_NOTHING)$(FAKEROOT) chown root:wheel $(THEOS_STAGING_DIR)/Library/LaunchDaemons/@@PACKAGENAME@@.plist$(ECHO_END)
