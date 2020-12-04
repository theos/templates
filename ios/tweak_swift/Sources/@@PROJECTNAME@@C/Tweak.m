@import Foundation;
@import Substrate;

FOUNDATION_EXTERN void orion_init(void);

__attribute__((constructor)) static void init() {
    // Initialize Orion - do not remove this line.
    orion_init();
    // Custom initialization code goes here.
}
