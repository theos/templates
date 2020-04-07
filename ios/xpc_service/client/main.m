#include <xpc/xpc.h>

int main(int argc, char *argv[], char *envp[]) {
	// Create connection to mach service
	xpc_connection_t connection = xpc_connection_create_mach_service("@@PACKAGENAME@@", NULL, 0);
	xpc_connection_set_event_handler(connection, ^(xpc_object_t some_object) { });
	xpc_connection_resume(connection);

	while (true) {
		// Send message to mach service, and wait for a response
		xpc_object_t object = xpc_dictionary_create(NULL, NULL, 0);
		xpc_dictionary_set_string(object, "message", "Ping");
		printf("Sending object: %s\n", xpc_copy_description(object));
		xpc_object_t reply = xpc_connection_send_message_with_reply_sync(connection, object);
		printf("Received reply object: %s\n\n", xpc_copy_description(reply));
		sleep(1);
	}

	return 0;
}
