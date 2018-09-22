include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@
$(APPLICATION_NAME)_FILES = $(wildcard *.m)
$(APPLICATION_NAME)_FRAMEWORKS = UIKit CoreGraphics

$(APPLICATION_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"@@PROJECTNAME@@\"" || true
