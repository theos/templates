include theos/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@Controller.m
@@PROJECTNAME@@_INSTALL_PATH = /Library/WeeLoader/Plugins
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
