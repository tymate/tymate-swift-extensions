Pod::Spec.new do |spec|

  spec.name         = "TymateSwiftExtensions"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/tymate/tymate-swift-extensions"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Simon Lejeune" => "simon@tymate.com" }

  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/tymate/tymate-swift-extensions.git", :tag => "#{spec.version}" }
  spec.source_files  = "TymateSwiftExtensions/**/*.{h,m,swift}"

end
