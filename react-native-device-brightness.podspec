require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-device-brightness"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'sandy105'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/sandy105/react-native-device-brightness", :tag => "v#{s.version}" }
  s.source_files  = "ios/RNDeviceBrightness/*.{h,m}"
  s.dependency "React-Core"
end
