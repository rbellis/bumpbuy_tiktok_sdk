Pod::Spec.new do |s|
 s.name = 'bumpbuy_tiktok_sdk'
 s.version = '1.0.0'
 s.summary = 'TikTok Business SDK integration for BumpBuy.'
 s.description = 'Flutter plugin wrapper for the TikTok Business iOS SDK.'
 s.homepage = 'https://github.com/rbellis/bumpbuy_tiktok_sdk'
 s.license = { :type => 'MIT' }
 s.author = { 'BumpBuy' => 'developer@bumpbuy.app' }
 s.source = { :path => '.' }
 s.source_files = 'Classes/**/*'
 s.dependency 'Flutter'
 s.dependency 'TikTokBusinessSDK', '1.7.1'
 s.platform = :ios, '12.0'
 s.swift_version = '5.0'
end
