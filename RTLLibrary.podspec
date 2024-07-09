#
# Be sure to run `pod lib lint RTLLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RTLLibrary'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RTLLibrary.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.homepage         = 'https://github.com/codebeautiful/RTKLib.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tong' => 'yunzyo@qq.com' }
  s.source           = { :git => 'https://github.com/codebeautiful/RTKLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
s.preserve_paths = "IMPORTANT.txt","RTLLibrary/frameworks/*.framework"  #Any file that should not be removed after being downloaded.

  s.ios.deployment_target = '12.0'

  s.source_files = 'RTLLibrary/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RTLLibrary' => ['RTLLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'UIMap'
  s.ios.vendored_frameworks = 'RTLLibrary/frameworks/RTKOTASDK.framework', 'RTLLibrary/frameworks/RTKLEFoundation.framework' # 依赖的第三方/自己的framework
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
