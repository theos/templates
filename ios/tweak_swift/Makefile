TARGET := iphone:clang:latest:12.2
@@KILL_RULE@@

include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = $(shell find Sources/@@PROJECTNAME@@ -name '*.swift') $(shell find Sources/@@PROJECTNAME@@C -name '*.m' -o -name '*.c' -o -name '*.mm')
@@PROJECTNAME@@_SWIFTFLAGS = -ISources/@@PROJECTNAME@@C/include -I$(THEOS_ORION_SUBSTRATE_MODULE)
@@PROJECTNAME@@_CFLAGS = -fobjc-arc -I$(THEOS_ORION_SUBSTRATE_MODULE)

include $(THEOS_MAKE_PATH)/tweak.mk
