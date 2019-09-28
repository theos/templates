TARGET := iphone:clang:latest:7.0

include @@THEOS@@/makefiles/common.mk

LIBRARY_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@PROJECTNAME@@.m
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/library.mk
