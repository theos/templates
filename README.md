nicTemplates
============

A set of NIC templates

Templates included:
- Application (Objective-C and Swift)
- CLI Tool (Objective-C and Swift)
- Tweak (empty or with a simple preference switch)
- Library
- Framework
- libactivator listener
- libactivator event
- Flipswitch switch
- XPC service
- Notification Center widget (iOS 5/6 and iOS 7+)

Templates planned to be included:
- ActionMenu extension
- Couria extension?

How to use this:
- Download the desired template in the form of a compressed file (.nic.tar extension).
- Place that template in `$THEOS/templates/iphone`.
- Run `nic.pl` and select the desired template.

Alternatively:
- Run build.sh; It will prompt for root priviledges to copy templates to `$THEOS/templates/iphones`.

------------
Tweak template is a modified version of the template found in https://github.com/DHowett/theos/tree/master/templates/iphone/tweak.nic.tar.

libactivator listener template is a modified version of https://github.com/rpetrich/libactivator/tree/master/example.

application_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/application.nic.tar

tool_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/tool.nic.tar
