include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = main.m @@CLASSPREFIX@@AppDelegate.m @@CLASSPREFIX@@RootViewController.m
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"@@PROJECTNAME@@\"" || true
