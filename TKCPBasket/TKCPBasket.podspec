#
# Be sure to run `pod lib lint TKCPBasket.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TKCPBasket'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TKCPBasket.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/29286529/TKCPBasket'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '29286529' => 'xianda.zheng@jiamiantech.com' }
  s.source           = { :git => 'https://github.com/29286529/TKCPBasket.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'Core' do |c|
    c.source_files = [
      'TKCPBasket/Classes/Core/**/*',
    ]
  end
  s.subspec 'LibStatic' do |libs|
    libs.source_files = [
      'TKCPBasket/Classes/LibStatic/**/*',
      'TKCPBasket/Libraries/BasketLibStatic/*.h'
    ]
    libs.vendored_libraries = 'TKCPBasket/Libraries/BasketLibStatic/*.a'
  end
  s.subspec 'FxStatic' do |fxs|
    fxs.source_files = [
      'TKCPBasket/Classes/FxStatic/**/*',
    ]
    fxs.vendored_frameworks = 'TKCPBasket/Frameworks/BasketFxStatic.framework'
  end

  # s.resource_bundles = {
  #   'TKCPBasket' => ['TKCPBasket/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
