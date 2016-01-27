#import <Foundation/Foundation.h>

/**
 `PZSwizzle` provides a class method to swizzle a C function for the duration of the block
 
 For example to make random number generator always return the same value:

     [PZSwizzle function:@"arc4random_uniform" with:predictable whileExecuting:^{

        u_int32_t random = arc4random_uniform(UINT_MAX)

     }];

 where the replacement function might look like:
 
     u_int32_t predictable(u_int32_t upper_bound) {
        return 42;
     }

 */

NS_ASSUME_NONNULL_BEGIN

@interface PZSwizzle : NSObject
/**
 *  Swizzle function with replacement for the duration of the block execution
 *
 *  @param functionName C function name, e.g. arc4random_uniform
 *  @param replacement  pointer to replacing C function
 *  @param block        block of code that will see replacement
 *
 *  @warning replacement function must have the same signature as original
 */
+(void)function:(NSString *)functionName with:(void *)replacement whileExecuting:(void (^)(void))block;
@end

NS_ASSUME_NONNULL_END