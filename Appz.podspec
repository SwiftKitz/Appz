Pod::Spec.new do |s|

  s.name         = "Appz"
  s.version      = "2.0.1"
  s.summary      = "Deeplinking to external applications made easy!"
  s.description  = <<-DESC
                   Appz makes it easy to open external applications with web fallback
                   support, including deeplinking. Get started with the docs or associated
                   playgrounds to quickly make the most out of this library.
                   DESC

  s.homepage     = "http://kitz.io"
  s.license      = "MIT"
  s.author             = { "Maz Jaleel" => "mazjaleel@gmail.com" }
  s.social_media_url   = "http://twitter.com/SwiftKitz"

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/SwiftKitz/Appz.git", :tag => "v2.0.1" }
  s.source_files = "Appz/Appz/**/*.swift"

  s.subspec 'Twitter' do |twitter|
    twitter.source_files = "Appz/Appz/Apps/Twitter.swift"
    twitter.source_files = "Appz/AppzTests/AppsTests/TwitterTests.swift"
    twitter.dependency "Appz/Appz/Entity/*.swift"
    twitter.dependency "Appz/Appz/Extensions/*.swift"
  end
end
