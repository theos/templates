TARGET := iphone:clang:latest:7.0

include @@THEOS@@/makefiles/common.mk

LIBRARY_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@PROJECTNAME@@.m
@@PROJECTNAME@@_CFLAGS = -fobjc-arc
@@PROJECTNAME@@_INSTALL_PATH = /usr/local/lib

include $(THEOS_MAKE_PATH)/library.mk
