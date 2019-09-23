include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = @@CLASSPREFIX@@RootListController.m
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = Preferences
@@PROJECTNAME@@_INSTALL_PATH = /Library/PreferenceBundles
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/@@PROJECTNAME@@.plist$(ECHO_END)
