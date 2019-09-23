@@KILL_RULE@@
include @@THEOS@@/makefiles/common.mk

TWEAK_NAME = @@PROJECTNAME@@

@@PROJECTNAME@@_FILES = Event.x Tweak.x
@@PROJECTNAME@@_LIBRARIES = activator
@@PROJECTNAME@@_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/@@PROJECTNAME@@; cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/@@PROJECTNAME@@/; fi$(ECHO_END)
