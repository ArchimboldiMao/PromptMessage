## PromptMessage
A prompt message framework for iOS apps.

## Requirements
* iOS 8.0+
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


## License
All code contributed to PromptMessage is released under an Apache 2.0 license.
