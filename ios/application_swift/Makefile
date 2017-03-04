TARGET = ::7.0
include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = AppDelegate.swift RootViewController.swift
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	$(ECHO_NOTHING)sed -i "" -e "/^[Dd]epends:/s/libswift/&$$(swift -version|cut -d' ' -f4|cut -d'.' -f1) (>= $$(swift -version|cut -d' ' -f4))/g" $(THEOS_STAGING_DIR)/DEBIAN/control$(ECHO_END)

after-install::
	install.exec "killall \"@@PROJECTNAME@@\"" || true
