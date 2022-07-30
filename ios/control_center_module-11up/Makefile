TARGET := iphone:clang:latest:11.0
INSTALL_TARGET_PROCESSES = SpringBoard

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_BUNDLE_EXTENSION = bundle
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@.m
@@PROJECTNAME@@_CFLAGS = -fobjc-arc
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = ControlCenterUIKit
@@PROJECTNAME@@_INSTALL_PATH = /Library/ControlCenter/Bundles/

include $(THEOS_MAKE_PATH)/bundle.mk
