![farfetch_logo](https://github.com/Farfetch/utils-ios/blob/master/Documentation/Farfetch_Logo/png/v1_center_400/01_V1_retina/42px_FF_V1.png)

# Farfetch iOS Helpers

[![CocoaPods Compatible](https://img.shields.io/badge/cocoapods-compatible-green.svg)](https://github.com/Farfetch/helpers-ios)
[![Supported languages](https://img.shields.io/badge/supported languages-obj--c%20%7C%20swift-green.svg)](https://github.com/Farfetch/helpers-ios)
[![Platform](https://img.shields.io/badge/platform-ios%20%7C%20osx%20%7C%20watchos%20%7C%20tvos-green.svg)](https://github.com/Farfetch/helpers-ios)

## Description

iOS library with different helpers for the iOS Farfetch App Ecosystem. 
- The project contains different helpers. 
- Each helper is contained in a different target.
- Each target has it own pod.

## Requirements

- iOS 8+.
- The user should have right permissions on the Farfetch Github account.

## How to install

#### Podfile

To integrate each helper into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/Farfetch/Specs.git'
platform :ios, '8.0'

target 'TargetName' do
pod 'CountryHelper', '~> 0.0.7'
pod 'PriceTypeHelper', '~> 0.0.13'
pod 'FFUILabelBuilder', '~> 0.0.12'
end
```

Then, run the following command:

```bash
$ pod install
```

## Current Helpers

- Country Helper
- Label Builder
- Price Type

