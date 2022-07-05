TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = @@PROJECTNAME@@

include @@THEOS@@/makefiles/common.mk

APPEX_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = SafariWebExtensionHandler.swift
@@PROJECTNAME@@_INSTALL_PATH = /Applications/@@PARENTPROJECTNAME@@.app/PlugIns
@@PROJECTNAME@@_FRAMEWORKS = SafariServices

include $(THEOS_MAKE_PATH)/appex.mk