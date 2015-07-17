#import <libactivator/libactivator.h>
#include <dispatch/dispatch.h>

@interface @@PROJECTNAME@@DataSource : NSObject <LAEventDataSource> {
	NSString *_bundleID;
}

+ (id)sharedInstance;

@end

static id sharedActivatorIfExists(void) {
	static id *_LASharedActivator = nil;
	static dispatch_once_t token = 0;
	dispatch_once(&token, ^{
		void *la = dlopen("/usr/lib/libactivator.dylib", RTLD_LAZY);
		if ((char *)la) {
			_LASharedActivator = [objc_getClass("LAActivator") sharedInstance];
		}
	});
	return _LASharedActivator;
}

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
		_bundleID = @"@@PACKAGENAME@@.event";
		// Register our event
		LAActivator *_LASharedActivator = sharedActivatorIfExists();
		if (_LASharedActivator.isRunningInsideSpringBoard) {
			// Register the datasource
			[_LASharedActivator registerEventDataSource:self forEventName:_bundleID];
				// If this datasource should supply more than one `dataSource', register more names for `self'
		}
	}
	return self;
}

- (void)dealloc {
	LAActivator *_LASharedActivator = sharedActivatorIfExists();
	if (_LASharedActivator.isRunningInsideSpringBoard) {
		[_LASharedActivator unregisterEventDataSourceWithEventName:_bundleID];
	}
	[super dealloc];
}

#pragma mark - Required methods

// Event name
- (NSString *)localizedTitleForEventName:(NSString *)eventName {
	return @"Event Title";
}
// Event group
- (NSString *)localizedGroupForEventName:(NSString *)eventName {
	return @"Event Group";
}
// Event description
- (NSString *)localizedDescriptionForEventName:(NSString *)eventName {
	return @"Event Description";
}

#pragma mark - Metadata (may be cached)

// Hide the event from the user
- (BOOL)eventWithNameIsHidden:(NSString *)eventName {
	return NO;
}
// Prevent unassignment when trying to unassign the last listener
- (BOOL)eventWithNameRequiresAssignment:(NSString *)eventName {
	return NO;
}
// Compatibility with modes
- (BOOL)eventWithName:(NSString *)eventName isCompatibleWithMode:(NSString *)eventMode {
	return YES;
}
- (BOOL)eventWithNameSupportsUnlockingDeviceToSend:(NSString *)eventName {
	return NO;
}

#pragma mark - Removal (useful for dynamic events)

// Activator can request a datasource to collapse on itself and disappear
- (BOOL)eventWithNameSupportsRemoval:(NSString *)eventName {
	// if YES, removeEventWithName: will be called
	return NO;
}
- (void)removeEventWithName:(NSString *)eventName {
	// Get rid of the datasource object
	return;
}

#pragma mark - Configuration view controller

// These methods require a subclass of LAEventConfigurationViewController to exist
- (NSString *)configurationViewControllerClassNameForEventWithName:(NSString *)eventName bundle:(NSBundle **)bundle { // LAEventConfigurationViewController
	// `outBundle' should be the bundle containing the configuration view controller subclass
	*outBundle = [NSBundle bundleWithPath:@"/this/should/not/exist.bundle"];
	return nil;
}
- (id)configurationForEventWithName:(NSString *)eventName {
	// Return an NSPropertyList-serializable object that is passed into the configuration view controller
	return nil;
}
- (void)eventWithName:(NSString *)eventName didSaveNewConfiguration:(id)configuration {
	// Use the NSPropertyList-serializable `configuration' object from the previous method
	return NO;
}

@end
