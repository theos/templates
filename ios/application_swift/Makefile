TARGET = iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = @@PROJECTNAME@@

include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = AppDelegate.swift RootViewController.swift
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk
