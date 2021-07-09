TARGET := iphone:clang:latest:6.0

include @@THEOS@@/makefiles/common.mk

TOOL_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@CLASSPREFIX@@XPC.m @@CLASSPREFIX@@XPCServiceDelegate.m main.m
@@PROJECTNAME@@_CFLAGS = -fobjc-arc
@@PROJECTNAME@@_CODESIGN_FLAGS = -Sentitlements.plist
@@PROJECTNAME@@_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk

after-@@PROJECTNAME@@-stage::
	$(ECHO_NOTHING)$(FAKEROOT) chown root:wheel $(THEOS_STAGING_DIR)/Library/LaunchDaemons/@@PACKAGENAME@@.plist$(ECHO_END)
