# swizzleCfunction

[![CI Status](http://img.shields.io/travis/paulz/swizzleCfunction.svg?style=flat)](https://travis-ci.org/paulz/swizzleCfunction)
[![Version](https://img.shields.io/cocoapods/v/swizzleCfunction.svg?style=flat)](http://cocoapods.org/pods/swizzleCfunction)
[![License](https://img.shields.io/cocoapods/l/swizzleCfunction.svg?style=flat)](http://cocoapods.org/pods/swizzleCfunction)
[![Platform](https://img.shields.io/cocoapods/p/swizzleCfunction.svg?style=flat)](http://cocoapods.org/pods/swizzleCfunction)

## Usage

```
[PZSwizzle function:@"kill" with:@"doNotKill" whileExecuting:^{
    [CrashReporter simulateCrashBySignal:9];
}];
```

To run the example project tests, clone the repo, and run `pod install` from the Example directory first.

## Installation

swizzleCfunction is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'swizzleCfunction'
```

## Author

Paul Zabelin, https://github.com/paulz

## License

swizzleCfunction is available under the MIT license. See the LICENSE file for more info.
