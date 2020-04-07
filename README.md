nicTemplates
============

A set of NIC templates

# Templates included:

- Application (Objective-C and Swift)
- CLI Tool (Objective-C and Swift)
- Tweak (empty or with a simple preference switch)
- Library
- Framework
- libactivator listener
- libactivator event
- Flipswitch switch
- Cydget
- XPC service
- Notification Center widget (iOS 5/6 and iOS 7+)

Templates planned to be included:
- ActionMenu extension
- Couria extension?

# Usage:

## Interactive

	$ $THEOS/nic.pl

- Select the desired template.
- Input the values for each query

## Programmatic

	$ nic.pl -p "package.name" -n "ProjectName" -u "User name" --nic template.nic.tar

# Building:

	$ build.sh

------------

Tweak template is a modified version of the template found in https://github.com/DHowett/theos/tree/master/templates/iphone/tweak.nic.tar.

libactivator listener template is a modified version of https://github.com/rpetrich/libactivator/tree/master/example.

application_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/application.nic.tar

tool_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/tool.nic.tar
