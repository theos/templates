TARGET := iphone:clang:latest:12.2
@@KILL_RULE@@

include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = $(shell find Sources/@@PROJECTNAME@@ -name '*.swift') $(shell find Sources/@@PROJECTNAME@@C -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
@@PROJECTNAME@@_SWIFTFLAGS = -ISources/@@PROJECTNAME@@C/include
@@PROJECTNAME@@_CFLAGS = -fobjc-arc -ISources/@@PROJECTNAME@@C/include

include $(THEOS_MAKE_PATH)/tweak.mk
