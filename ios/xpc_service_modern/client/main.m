#import <Foundation/Foundation.h>
#import "../@@CLASSPREFIX@@XPCProtocol.h"

int main(int argc, char *argv[], char *envp[]) {
    // Setup a connection to our service
    NSXPCConnection *connection = [[NSXPCConnection alloc] initWithMachServiceName:@"@@PACKAGENAME@@"];
    connection.remoteObjectInterface = [NSXPCInterface interfaceWithProtocol:@protocol(@@CLASSPREFIX@@XPCProtocol)];
    [connection resume];
    printf("Enter any string to turn it lowercase!\n");
    // Grab user input
    NSString *userInput = [[[NSString alloc] initWithData:NSFileHandle.fileHandleWithStandardInput.availableData encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:NSCharacterSet.newlineCharacterSet];
    __block NSString *result;
    // Use dispatch_semaphore to wait for the reply (if you don't care about iOS <9 support, you can use synchronousRemoteObjectProxyWithErrorHandler:)
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    [connection.remoteObjectProxy lowercaseStringForString:userInput reply:^(NSString *reply) {
        result = reply;
        dispatch_semaphore_signal(semaphore);
    }];
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    [connection invalidate];
    printf("Got reply from XPC service: %s\n", result.UTF8String);
    return 0;
}
