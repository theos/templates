TARGET := iphone:clang:latest:7.0
@@KILL_RULE@@

include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = Switch.x
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_LIBRARIES = flipswitch
@@PROJECTNAME@@_INSTALL_PATH = /Library/Switches
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
