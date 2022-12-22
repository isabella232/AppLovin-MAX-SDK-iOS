Pod::Spec.new do |s|

s.authors = 'AppLovin Corporation'
s.name = 'AppLovinMediationVerizonAdsAdapter'
s.version = '2.2.0.6'
s.platform = :ios, '11.0'
s.summary = 'Yahoo adapter used for mediation with the AppLovin MAX SDK'
s.homepage = "https://github.com/CocoaPods/Specs/search?o=desc&q=#{s.name}&s=indexed"
s.license = 
{ 
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2022 AppLovin Corp. All rights reserved.

The AppLovin MAX SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = 
{
  :http => "https://artifacts.applovin.com/ios/com/applovin/mediation/yahoo-adapter/AppLovinMediationYahooAdapter-#{s.version}.zip",
  :type => 'zip'
}

s.vendored_frameworks = "AppLovinMediationYahooAdapter-#{s.version}/AppLovinMediationYahooAdapter.xcframework"

s.dependency 'Yahoo-Mobile-SDK', '= 1.3.0'
s.dependency 'AppLovinSDK'

s.swift_version = '5.0'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
}

s.description = <<-DESC

AppLovin turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
