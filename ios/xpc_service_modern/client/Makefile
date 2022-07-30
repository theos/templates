TARGET := iphone:clang:latest:6.0

include @@THEOS@@/makefiles/common.mk

TOOL_NAME = @@PROJECTNAME@@_client

@@PROJECTNAME@@_client_FILES = main.m
@@PROJECTNAME@@_client_CFLAGS = -fobjc-arc
@@PROJECTNAME@@_client_CODESIGN_FLAGS = -Sentitlements.plist
@@PROJECTNAME@@_client_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
