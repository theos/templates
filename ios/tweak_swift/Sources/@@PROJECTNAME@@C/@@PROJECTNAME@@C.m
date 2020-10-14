extern void __orion_constructor(void);

__attribute__((constructor)) static void ctor() {
    __orion_constructor();
}
