TARGET := iphone:clang:latest:12.2

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = RootListController.swift
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = Preferences
@@PROJECTNAME@@_INSTALL_PATH = /Library/PreferenceBundles
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
