# Theos NIC Templates

A set of [NIC](https://theos.dev/docs/nic) templates

## Templates included:

- libactivator event
- libactivator listener
- Application (Objective-C and Swift)
- Control Center module (iOS 11+)
- Cydget
- Flipswitch switch
- Framework
- Library
- Notification Center widget (iOS 5/6 and iOS 7+)
- Null
- Preference bundle (Objective-C and Swift)
- Theme
- CLI Tool (Objective-C and Swift)
- Tweak (bare or with a simple preference switch)
- XPC service


Templates planned to be included:

- ActionMenu extension
- Couria extension?

## Usage:

### Interactive

	$ nic.pl

- Select the desired template
- Input the values for each query

### Programmatic

	$ nic.pl -p "package.name" -n "ProjectName" -u "User name" --nic template.nic.tar

## Building your own template

- Copy a preexisting directory from ./ios/ OR run denicify.pl on a preexisting .nic.tar
- Rename the resulting directory
- Edit its contents as desired
- Run nicify.pl on it
	- Note: the resulting template can be placed in nic/templates/ for use with the NIC (i.e., nic.pl)

## Building the entire templates repo:

	$ ./build.sh

## Testing the templates repo:

	$ ./test.sh
---

Tweak template is a modified version of the template found in https://github.com/DHowett/theos/tree/master/templates/iphone/tweak.nic.tar.

libactivator listener template is a modified version of https://github.com/rpetrich/libactivator/tree/master/example.

application_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/application.nic.tar

tool_swift template is a modified version of https://github.com/theos/theos/tree/master/templates/ios/theos/tool.nic.tar
