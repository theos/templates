#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	
	_rootViewController = [[ViewController alloc] init];
	
	_window.rootViewController = _rootViewController;
	
	
	[_window makeKeyAndVisible];
}


@end
