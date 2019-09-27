#import <UIKit/UIKit.h>

@interface SBAwayViewPluginController : UIViewController
@end

@interface @@PROJECTNAME@@LockScreenController : SBAwayViewPluginController
@end

@interface @@PROJECTNAME@@LockScreenView : UIView
@end

@implementation @@PROJECTNAME@@LockScreenController

+ (instancetype)rootViewController {
    return [self new];
}

- (void)loadView {
    [self setView:[@@PROJECTNAME@@LockScreenView new]];
}

- (void)viewWillAppear:(BOOL)animated {

}

- (void)viewDidAppear:(BOOL)animated {

}

- (void)viewWillDisappear:(BOOL)animated {

}

- (void)viewDidDisappear:(BOOL)animated {

}

// Return YES if you handle the event
- (BOOL)handleMenuButtonTap {
    return NO;
}
- (BOOL)handleMenuButtonDoubleTap {
    return NO;
}
- (BOOL)handleMenuButtonHeld {
    return NO;
}
- (BOOL)handleGesture:(int)gestureType fingerCount:(unsigned)count {
    return NO;
}

// Return NO to hide the lockscreen clock
- (BOOL)showAwayItems {
    return YES;
}

@end

@implementation @@PROJECTNAME@@LockScreenView

- (instancetype)init {
    CGRect frame = [[UIScreen mainScreen] bounds];
    if ((self = [super initWithFrame:frame])) {
        // Initialize stuff
    }
    return self;
}

@end
