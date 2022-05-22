#
# Be sure to run `pod lib lint HDCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HDCategory'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HDCategory.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aqi2021/HDCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hsf' => 'huangsf2021@163.com' }
  s.source           = { :git => 'https://github.com/aqi2021/HDCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  
  # s.public_header_files = 'HDCategory/Classes/HDCategory.h'
  s.source_files = 'HDCategory/Classes/**/*.{h,m}'


  # Foundation
  s.subspec 'Foundation' do |ss|
    ss.source_files = 'HDCategory/Classes/Foundation/*.{h,m}'
  end


  # UIKit
  s.subspec 'UIKit' do |ss|
    ss.source_files = 'HDCategory/Classes/UIKit/*.{h,m}'
  end

   
   
#  s.resource_bundles = {
#   'HDCategory' => ['HDCategory/Assets/*.png']
#  }
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'HDCategory', :path => '../HDCategory'
  s.dependency 'HDLog', :path => '../HDLog'
  
  
  
end
