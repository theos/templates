# Theos NIC Templates

A set of [NIC](https://theos.dev/docs/nic) templates

## Templates included:

- libactivator event
- libactivator listener
- Application (Objective-C and Swift [UIKit; SwiftUI])
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

## Usage:

### Interactive

	$ nic.pl

- Select the desired template
- Input the values for each query

### Programmatic

	$ nic.pl -p "package.name" -n "ProjectName" -u "User name" --nic template.nic.tar

## Building your own template

- Copy a preexisting directory from ./ios/ OR run `denicify.pl` on a preexisting .nic.tar
- Rename the resulting directory
- Edit its contents as desired
- Run `nicify.pl` on it
	- Note: the resulting template can be placed in $THEOS/templates/ for use with the NIC (i.e., `nic.pl`)

---

Includes templates modified from the following:

- cydget, framework, notification_center_widget, and xpc_service
	- Source: https://github.com/DHowett/theos-nic-templates.

- notification_center_widget-7up
 	- Source: https://github.com/sharedInstance/iOS-7-Notification-Center-Widget-Template.

- tweak, application, and tool
	- Source: https://github.com/theos/theos/tree/legacy/templates/iphone.

- activator_listener
	- Source: https://github.com/rpetrich/libactivator/tree/master/example.
