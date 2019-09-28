TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = @@PROJECTNAME@@

include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = main.m @@CLASSPREFIX@@AppDelegate.m @@CLASSPREFIX@@RootViewController.m
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
