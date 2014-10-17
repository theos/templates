#import <libactivator/libactivator.h>
#include <dispatch/dispatch.h>

#define LASendEventWithName(eventName) \
	[LASharedActivator sendEventToListener:[LAEvent eventWithName:eventName mode:[LASharedActivator currentEventMode]]]

static NSString *@@PROJECTNAME@@_eventName = @"@@PROJECTNAME@@Event";

@interface @@PROJECTNAME@@DataSource : NSObject <LAEventDataSource> {}

+ (id)sharedInstance;

@end

@implementation @@PROJECTNAME@@DataSource

+ (id)sharedInstance {
	static id sharedInstance = nil;
	static dispatch_once_t token = 0;
	dispatch_once(&token, ^{
		sharedInstance = [self new];
	});
	return sharedInstance;
}

+ (void)load {
	[self sharedInstance];
}

- (id)init {
	if ((self = [super init])) {
		// Register our event
		if (LASharedActivator.isRunningInsideSpringBoard) {
			[LASharedActivator registerEventDataSource:self forEventName:@@PROJECTNAME@@_eventName];
		}
	}
	return self;
}

- (void)dealloc {
	if (LASharedActivator.isRunningInsideSpringBoard) {
		[LASharedActivator unregisterEventDataSourceWithEventName:@@PROJECTNAME@@_eventName];
	}
	[super dealloc];
}

- (NSString *)localizedTitleForEventName:(NSString *)eventName {
	return @"Event Title";
}

- (NSString *)localizedGroupForEventName:(NSString *)eventName {
	return @"Event Group";
}

- (NSString *)localizedDescriptionForEventName:(NSString *)eventName {
	return @"Event Description";
}
/*
- (BOOL)eventWithNameIsHidden:(NSString *)eventName {
	return NO;
}
*/
/*
- (BOOL)eventWithNameRequiresAssignment:(NSString *)eventName {
	return NO;
}
*/
- (BOOL)eventWithName:(NSString *)eventName isCompatibleWithMode:(NSString *)eventMode {
	return YES;
}
/*
- (BOOL)eventWithNameSupportsUnlockingDeviceToSend:(NSString *)eventName {
	return NO;
}
*/

@end

////////////////////////////////////////////////////////////////

// Event dispatch

/*
%hook ClassName

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	LASendEventWithName(@@PROJECTNAME@@_eventName);
	%orig();
}

%end
*/
