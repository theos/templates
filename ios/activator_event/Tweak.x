#import <Foundation/Foundation.h>
#import <libactivator/libactivator.h>

// Event dispatch

#define LASendEventWithName(eventName) \
	[LASharedActivator sendEventToListener:[LAEvent eventWithName:eventName mode:[LASharedActivator currentEventMode]]]


static NSString *_bundleID = @"@@PACKAGENAME@@.event";

%hook ClassName

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	LASendEventWithName(_bundleID);
	%orig();
}

%end
