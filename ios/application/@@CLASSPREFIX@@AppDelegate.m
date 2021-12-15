#import "@@CLASSPREFIX@@AppDelegate.h"
#import "@@CLASSPREFIX@@RootViewController.h"

@implementation @@CLASSPREFIX@@AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	_window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	_rootViewController = [[UINavigationController alloc] initWithRootViewController:[[@@CLASSPREFIX@@RootViewController alloc] init]];
	_window.rootViewController = _rootViewController;
	[_window makeKeyAndVisible];
	return YES;
}

@end
