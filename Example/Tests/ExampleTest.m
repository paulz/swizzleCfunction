//
//  swizzleCfunctionTests.m
//  swizzleCfunctionTests
//
//  Created by Paul Zabelin on 01/26/2016.
//  Copyright (c) 2016 Paul Zabelin. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

#import <stdlib.h>
#import <swizzleCFunction/swizzleCFunction.h>

/**
 Replacement for arc4random_uniform function to allow repeatable tests
 Returns predictable value in place of arc4random_uniform()
 Should match signature of arc4random_uniform()
 */
u_int32_t predictable(u_int32_t upper_bound) {
    return 42;
}

SPEC_BEGIN(ExampleTest)

describe(@"PZSwizzle", ^{
  context(@"arc4random_uniform", ^{
      it(@"will return a random number less than upper bound", ^{
          [[@(arc4random_uniform(20)) should] equal:10 withDelta:10];
      });

      it(@"unlikely to be predictable", ^{
          [[@(arc4random_uniform(UINT_MAX)) shouldNot] equal:@42];
      });

      it(@"can swizzled for predictability in test", ^{
          [PZSwizzle function:@"arc4random_uniform" with:predictable whileExecuting:^{
              [[@(arc4random_uniform(UINT_MAX)) should] equal:@42];
          }];
      });
  });
});

SPEC_END

