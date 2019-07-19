# TymateSwiftExtensions

[![Platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20tvOS%20%7C%20macOS%20%7C%20watchOS-lightgrey.svg)](https://github.com/tymate/tymate-swift-extensions)
[![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-10.2-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

This pod have some useful functions and extensions that are often use in swift projects
For example you can check if a string is a valid email easily or design an imageView in circle

## String Extensions

```swift
func isValidEmail() -> Bool {}

func isUrl() -> Bool {}

func cleanUrl() -> String {}

func phoneCall() {}

func mailTo() {}

func capitalizeFirstLetter() -> String {}

func toNumber() -> NSNumber? {}

func toFloat() -> Float {}

func toDouble() -> Double {}

func isEqualToZero() -> Bool {}
```

## DateFormatter Extensions

```swift
static var rails: String {}
```

## UIImageView Extensions

```swift
func loadImage(withUrl url: String?, andPlaceHolder placeHolder: UIImage? = nil, preloadWithPlaceHolder: Bool = true) {}

func designRounded(radius: Int) {}

func designCircle() {}
```

## UIViewController Extensions

```swift
func showToast(title: String, subtitle: String? = nil, image: UIImage? = nil, duration: TimeInterval = 3, position: ToastPosition = .bottom, view: UIView? = nil) {}
```

## CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build TymateSwiftExtensions 0.0.1+.

To integrate Extensions into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/tymate/tymate-swift-extensions.git'

use_frameworks!

pod 'TymateSwiftExtensions'
```

Then, run the following command:

```bash
$ pod install
```

## Contributing

  - 1) Fork this repository!
  - 2) Create your feature branch: ```git checkout -b Your-New-Feature```
  - 3) Commit your changes: ```git commit -am 'Adding some super awesome update'```
  - 4) Push to the branch: ```git push origin Your-New-Feature```
  - 5) Submit a pull request!
