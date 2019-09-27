TARGET := iphone:clang:latest:7.0
@@KILL_RULE@@

THEOS_LEAN_AND_MEAN = 1
include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = Listener.x
@@PROJECTNAME@@_LIBRARIES = activator
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
