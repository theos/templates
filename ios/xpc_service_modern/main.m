#include <stdio.h>
#import "@@CLASSPREFIX@@XPCServiceDelegate.h"

int main(int argc, char *argv[], char *envp[]) {
    @autoreleasepool {
        NSXPCListener *listener = [[NSXPCListener alloc] initWithMachServiceName:@"@@PACKAGENAME@@"];
        @@CLASSPREFIX@@PCServiceDelegate *delegate = [@@CLASSPREFIX@@PCServiceDelegate new];
        listener.delegate = delegate;
        [listener resume];
        [[NSRunLoop currentRunLoop] run];
        return 0;
    }
}
