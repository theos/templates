@@KILL_RULE@@include @@THEOS@@/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = Switch.x
@@PROJECTNAME@@_FRAMEWORKS = UIKit
@@PROJECTNAME@@_LIBRARIES = flipswitch
@@PROJECTNAME@@_INSTALL_PATH = /Library/Switches
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/@@PROJECTNAME@@; cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/@@PROJECTNAME@@/; fi$(ECHO_END)
