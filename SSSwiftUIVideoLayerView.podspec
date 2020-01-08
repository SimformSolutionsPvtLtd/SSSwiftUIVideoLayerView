#
# Be sure to run `pod lib lint SSSwiftUIVideoLayerView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSSwiftUIVideoLayerView'
  s.version          = '0.1.0'
  s.summary          = 'SSSwiftUIVideoPlayerLayer is a custom controller which helps to load video in SwiftUI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SSSwiftUIVideoPlayerLayer is a very easy way to load any video in SwiftUI, User just need to call one function with video name and video type and its done.
                       DESC

  s.homepage         = 'https://github.com/simformsolutions/SSSwiftUIVideoLayerView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vatsal Tanna' => 'vatsal.t@simformsolutions.com' }
  s.source           = { :git => 'https://github.com/simformsolutions/SSSwiftUIVideoLayerView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'
  s.platforms = {
    "ios": "13.0"
  }

  s.source_files = 'Source/**/*.swift'
  
end
