include @@THEOS@@/makefiles/common.mk

APPLICATION_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = $(wildcard *.m)

@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics SpriteKit

@@PROJECTNAME@@_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"@@PROJECTNAME@@\"" || true
