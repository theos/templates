TARGET := iphone:clang:latest:7.0
@@KILL_RULE@@

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@LockScreen

@@PROJECTNAME@@LockScreen_FILES = @@PROJECTNAME@@.m
@@PROJECTNAME@@LockScreen_FRAMEWORKS = UIKit
@@PROJECTNAME@@LockScreen_PRIVATE_FRAMEWORKS = SpringBoardUI
@@PROJECTNAME@@LockScreen_INSTALL_PATH = /System/Library/SpringBoardPlugins/
@@PROJECTNAME@@LockScreen_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
