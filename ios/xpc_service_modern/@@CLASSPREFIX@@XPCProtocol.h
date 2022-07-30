#import <Foundation/Foundation.h>

@protocol @@CLASSPREFIX@@XPCProtocol
// Define all your methods here and implement them in the @@CLASSPREFIX@@XPC class
- (void)lowercaseStringForString:(NSString *)string reply:(void (^)(NSString *))reply;
@end
