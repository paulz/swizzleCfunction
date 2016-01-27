#import <Foundation/Foundation.h>

@interface PZSwizzle : NSObject
+(void)function:(NSString *)functionName with:(void *)replacement whileExecuting:(void (^)(void))block;
@end
