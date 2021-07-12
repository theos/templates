#import "@@CLASSPREFIX@@XPC.h"

@implementation @@CLASSPREFIX@@XPC

// This is an example method; change the method name and the code according to your needs and send the result back using reply(result)
- (void)lowercaseStringForString:(NSString *)string reply:(void (^)(NSString *))reply {
    NSString *lowercaseString = string.lowercaseString;
    reply(lowercaseString);
}

@end
