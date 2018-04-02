#
# Be sure to run `pod lib lint Use_Desk_iOS_SDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Use_Desk_iOS_SDK'
  s.version          = '0.0.1'
  s.summary          = 'A short description of Use_Desk_iOS_SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Maxim/Use_Desk_iOS_SDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maxim' => 'ixotdog@gmail.com' }
  s.source           = { :git => 'https://github.com/Maxim/Use_Desk_iOS_SDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  #s.name     = 'YandexMapKit'
  #s.version  = '1.0.11'
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  #s.static_framework = true

  s.source_files = 'Use_Desk_iOS_SDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Use_Desk_iOS_SDK' => ['Use_Desk_iOS_SDK/Assets/*.png']
  # }
  s.resources = ["images/*.png", "Classes/UDChat/Tabs/04_Settings/11_AddAccountAddAccountView.xib"]
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit' ,'AVFoundation'
  # s.dependency 'AFNetworking', '~> 2.3'
  #s.dependency 'MBProgressHUD'
  #s.dependency 'Socket.IO-Client-Swift'
  #s.dependency 'NYTPhotoViewer'
  #s.dependency 'RCAudioPlayer'
  #s.dependency 'Realm'
  #s.dependency 'ProgressHUD'
  
  #s.dependency 'ApiAI/Core'
  #s.dependency'Crashlytics'
  #s.dependency'FBSDKCoreKit'
  #s.dependency 'FBSDKLoginKit'
  #s.dependency 'Firebase/Core'
  #s.dependency 'Firebase/Auth'
  #s.dependency 'Firebase/Database'
  #s.dependency 'Firebase/Storage'
  #s.dependency 'GoogleSignIn'
  #s.dependency 'OneSignal'
  #s.dependency 'SinchVerification'
  
  #s.dependency 'MGSwipeTableCell'
  #s.dependency 'Reachability'
  #s.dependency 'RNCryptor-objc'
end
