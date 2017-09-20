#import <UIKit/UIKit.h>

// sideload tweaks should be internal ( will be built without substrate linked )
// just type 'make' in terminal to build your dylib 
// output dylib can be found here: ( /dylib/@@PROJECTNAME@@.dylib )
// you can inject it easily with optool or insert_dylib to your target application
// why we use theos-jaild while we can do it native :)
// Template by @iMokhles


// important ( don't remove even if it's exist in Makefil )
%config(generator=internal)

/****
OLD BUT GOLD ;)
****/
/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(id)arg {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/

/* 
// @iMokhles WhatsApp Example 

%hook WhatsAppAppDelegate
- (_Bool)application:(id)arg1 reallyDidFinishLaunchingWithOptions:(id)arg2 {
	%orig;
	dispatch_async(dispatch_get_main_queue(), ^{
	  	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WhatsApp Tweak" message:@"Tweak Injeted well to this app" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
	  	
		[alert show];
		// if you don't use ARC :(
		[alert release];
	});
	
}
%end

*/