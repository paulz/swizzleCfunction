#import "PZSwizzle.h"
#import <fishhook/fishhook.h>
#import <dlfcn.h>

@implementation PZSwizzle
+(void)function:(NSString *)functionName with:(void *)replacement whileExecuting:(void (^)(void))block {
    const char *function = [functionName cStringUsingEncoding:NSUTF8StringEncoding];
    void *original = dlsym(RTLD_DEFAULT, function);
    struct rebinding binding = {function, replacement};
    struct rebinding bindings[] = {binding};
    rebind_symbols(bindings, 1);
    block();
    binding.replacement = original;
    rebind_symbols(bindings, 1);
}

@end
