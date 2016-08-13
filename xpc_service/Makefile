include @@THEOS@@/makefiles/common.mk

TOOL_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = main.m

include $(THEOS_MAKE_PATH)/tool.mk

after-stage::
	$(ECHO_NOTHING)$(FAKEROOT) chown root:wheel $(THEOS_STAGING_DIR)/Library/LaunchDaemons/@@PACKAGENAME@@.plist$(ECHO_END)
