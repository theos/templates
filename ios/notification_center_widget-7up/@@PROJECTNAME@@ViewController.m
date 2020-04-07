#import "@@PROJECTNAME@@ViewController.h"

@implementation @@PROJECTNAME@@ViewController

- (void)loadView {
	[super loadView];

	/*
	 Set up UI here. Called when SpringBoard is launching.
	 Access resources from your bundle via the private method
	 +[UIImage imageNamed:inBundle:], passing in the bundle
	 variable set below.
	*/
	//NSBundle *my_bundle = [NSBundle bundleForClass:[self class]];
}

- (CGSize)preferredViewSize {
	// Provide a height by modifying the second parameter.
	return CGSizeMake([super preferredViewSize].width, 100.f);
}

- (void)hostDidPresent {
	[super hostDidPresent];
	// Notification Center was opened.
}

- (void)hostDidDismiss {
	[super hostDidDismiss];
	// Notification Center was closed.
}

@end
