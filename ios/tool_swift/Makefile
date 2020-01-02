TARGET := iphone:clang:latest:7.0

include @@THEOS@@/makefiles/common.mk

TOOL_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = main.swift
@@PROJECTNAME@@_CODESIGN_FLAGS = -Sentitlements.plist
@@PROJECTNAME@@_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
