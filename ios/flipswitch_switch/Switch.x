#import <Flipswitch/FSSwitchDataSource.h>
#import <Flipswitch/FSSwitchPanel.h>
#import <Foundation/NSUserDefaults+Private.h>

static NSString *nsDomainString = @"@@PACKAGENAME@@";
static NSString *nsNotificationString = @"@@PACKAGENAME@@/preferences.changed";

@interface @@PROJECTNAME@@Switch : NSObject <FSSwitchDataSource>
@end

@implementation @@PROJECTNAME@@Switch

- (NSString *)titleForSwitchIdentifier:(NSString *)switchIdentifier {
    return @"@@PROJECTNAME@@";
}

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier {
    NSNumber *n = (NSNumber *)[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled" inDomain:nsDomainString];
    BOOL enabled = (n)? [n boolValue]:YES;
    return (enabled) ? FSSwitchStateOn : FSSwitchStateOff;
}

- (void)applyState:(FSSwitchState)newState forSwitchIdentifier:(NSString *)switchIdentifier {
    switch (newState) {
        case FSSwitchStateIndeterminate:
            break;
        case FSSwitchStateOn:
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:YES] forKey:@"enabled" inDomain:nsDomainString];
            CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), (CFStringRef)nsNotificationString, NULL, NULL, YES);
            break;
        case FSSwitchStateOff:
            [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithBool:NO] forKey:@"enabled" inDomain:nsDomainString];
            CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), (CFStringRef)nsNotificationString, NULL, NULL, YES);
            break;
    }
}

@end
