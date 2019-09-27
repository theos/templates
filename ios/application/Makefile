TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = @@PROJECTNAME@@

THEOS_LEAN_AND_MEAN = 1
include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = main.m @@CLASSPREFIX@@AppDelegate.m @@CLASSPREFIX@@RootViewController.m
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
