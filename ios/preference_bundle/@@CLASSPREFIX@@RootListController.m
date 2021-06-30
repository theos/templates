#import <Foundation/Foundation.h>
#import "@@CLASSPREFIX@@RootListController.h"

@implementation @@CLASSPREFIX@@RootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
