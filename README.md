## PromptMessage
A prompt message framework for iOS apps.

[![PromptMessage v1.0.0](https://img.shields.io/badge/release-v1.0.0-green.svg)](https://github.com/ArchimboldiMao/PromptMessage/tree/1.0.0)
[![PromptMessage licence](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://github.com/ArchimboldiMao/PromptMessage/blob/master/LICENSE)

## Requirements
* iOS 8.0+
* Xcode 8.0+
* Swift 3

## Installation

#### CocoaPods
[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects.

Specify PromptMessage into your project's `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'PromptMessage'
```

Then run the following command:

```bash
$ pod install
```

## Usage
```
import PromptMessage
```

```
let message = Message.init(titleText: "This is a bottom prompt message.", textColor: UIColor.white, backgroundColor: UIColor.init(red: 0.97, green: 0.73, blue: 0.18, alpha: 1.0))
PromptMessage.show(withMessage: message)
```        
        
More usage, please see the [PromptMessageExample](./Examples/PromptMessageExample).

## Author

Written by Archimboldi Mao. You can [find me on Twitter](https://twitter.com/ArchimboldiMao) if you have any suggestions, requests, or just want to talk!

If you use this library in your application, please let me know about it.

## License
All code contributed to PromptMessage is released under an Apache 2.0 license.
