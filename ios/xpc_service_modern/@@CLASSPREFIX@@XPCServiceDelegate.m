#import "@@CLASSPREFIX@@XPCServiceDelegate.h"
#import "@@CLASSPREFIX@@XPC.h"
#import <sys/param.h>

int proc_pidpath(int pid, void * buffer, uint32_t  buffersize);

@implementation @@CLASSPREFIX@@PCServiceDelegate

- (BOOL)listener:(NSXPCListener *)listener shouldAcceptNewConnection:(NSXPCConnection *)connection {
    // This code checks for the path of the process that's trying to connect for security purposes.
    // If you aren't planning on giving your services root access or you believe it will be absolutely harmless even if a malicious third-party process can connect, you can remove this bit of code code.
    char pathbuf[4 * MAXPATHLEN];
    int ret = proc_pidpath(connection.processIdentifier, pathbuf, sizeof(pathbuf));
    if (ret <= 0) {
        printf("Error getting connecting process pid/executable path, refusing connection\n");
        return NO;
    }
    if (strcmp(pathbuf, "/usr/local/bin/@@PROJECTNAME@@_client") != 0) { // Change this path according to match the installation path of the process you want to allow to connect
        printf("You shall not pass!\n");
        return NO;
    }
    // If we reached to this point in the code, the parent process passed all the security checks and we can start setting up the connection
    connection.exportedInterface = [NSXPCInterface interfaceWithProtocol:@protocol(@@CLASSPREFIX@@XPCProtocol)];
    @@CLASSPREFIX@@XPC *exportedObject = [@@CLASSPREFIX@@XPC new];
    connection.exportedObject = exportedObject;
    [connection resume];
    return YES;
}

@end
