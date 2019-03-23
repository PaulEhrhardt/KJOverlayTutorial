#
# Be sure to run `pod lib lint LiquidFloatingActionButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KJOverlayTutorial"
  s.version          = "2.0.1"
  s.summary          = "Overlay Tutorial"
  s.description      = <<-DESC
                      Overlay Tutorial
                       DESC

  s.homepage         = "https://github.com/PaulEhrhardt/KJOverlayTutorial"
  s.license          = 'MIT'
  s.author           = { "Paul Ehrhardt" => "ehrpaulhardt@gmail.com" }
  s.source           = { :git => "https://github.com/PaulEhrhardt/KJOverlayTutorial", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ehrpaulhardt'
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'OverlayTutorial/Classes/*'
end
