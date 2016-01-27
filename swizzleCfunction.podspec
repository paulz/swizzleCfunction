Pod::Spec.new do |s|
  s.name             = "swizzleCfunction"
  s.version          = "0.1.0"
  s.summary          = "Swizzle a C function with your own while executing a block"
  s.description      = <<-DESC
    Substitute C function with your own implementation temporarily.
    Useful for testing code that calls C Language functions. This allows to provide fake implementations that take effect only while running a block of code under test. Uses on https://cocoapods.org/pods/fishhook - a very simple library that enables dynamically rebinding symbols in Mach-O binaries running on iOS in the simulator and on device.
                       DESC
  s.homepage         = "https://github.com/paulz/swizzleCfunction"
  s.license          = 'MIT'
  s.author           = { "Paul Zabelin" => "https://github.com/paulz" }
  s.source           = { :git => "https://github.com/paulz/swizzleCfunction.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/iospaulz'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'fishhook', '~> 0.2'
end
