TARGET := iphone:clang:latest:7.0

include @@THEOS@@/makefiles/common.mk

FRAMEWORK_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@PROJECTNAME@@.m
@@PROJECTNAME@@_PUBLIC_HEADERS = @@PROJECTNAME@@.h
@@PROJECTNAME@@_INSTALL_PATH = /Library/Frameworks
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/framework.mk
