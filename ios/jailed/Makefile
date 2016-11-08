# Don't modify these three variables
DEBUG=0
TARGET_CODESIGN=
override _LOCAL_USE_SUBSTRATE=

include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = Tweak.xm

THEOS_LIBRARY_PATH += -Llib
@@PROJECTNAME@@_LDFLAGS += -Flib -lsubstrate -lsqlite3 -lc++
@@PROJECTNAME@@_FRAMEWORKS += UIKit JavaScriptCore Cycript

include $(THEOS_MAKE_PATH)/tweak.mk
