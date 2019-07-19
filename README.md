# TymateSwiftExtensions

Just add "https://github.com/tymate/tymate-swift-extensions.git" as source and the pod 'TymateSwiftExtensions' to your Podfile

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
func loadImage(withUrl url: String?, andPlaceHolder placeHolder: UIImage? = nil,            preloadWithPlaceHolder: Bool = true) {}

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
platform :ios, '8.0'
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
