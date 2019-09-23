#import "@@CLASSPREFIX@@AppDelegate.h"
#import "@@CLASSPREFIX@@RootViewController.h"

@implementation @@CLASSPREFIX@@AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	_rootViewController = [[UINavigationController alloc] initWithRootViewController:[[@@CLASSPREFIX@@RootViewController alloc] init]];
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
}

@end
