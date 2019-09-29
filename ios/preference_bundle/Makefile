TARGET := iphone:clang:latest:7.0

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@CLASSPREFIX@@RootListController.m
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = Preferences
@@PROJECTNAME@@_INSTALL_PATH = /Library/PreferenceBundles
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
