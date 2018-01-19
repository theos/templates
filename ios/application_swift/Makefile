TARGET = ::7.0
include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = AppDelegate.swift RootViewController.swift
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"@@PROJECTNAME@@\"" || true
