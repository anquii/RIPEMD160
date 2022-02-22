# RIPEMD160

[![Platform](https://img.shields.io/badge/Platforms-macOS%20%7C%20iOS-blue)](#platforms)
[![Swift Package Manager compatible](https://img.shields.io/badge/SPM-compatible-orange)](#swift-package-manager)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/anquii/RIPEMD160/blob/main/LICENSE)

An implementation of [RIPEMD-160](https://homes.esat.kuleuven.be/~bosselae/ripemd160.html) in Swift. All credit goes to [Martin R.](https://stackoverflow.com/users/1187415/martin-r) for publishing the implemention [here](https://stackoverflow.com/questions/43091858/swift-hash-a-string-using-hash-hmac-with-ripemd160/43193583#43193583).  

## Platforms
- macOS 10.15+
- iOS 13+

## Installation

### Swift Package Manager

Add the following line to your `Package.swift` file:
```swift
.package(url: "https://github.com/anquii/RIPEMD160.git", from: "1.0.0")
```
...or integrate with Xcode via `File -> Swift Packages -> Add Package Dependency...` using the URL of the repository.

## Usage

```swift
import RIPEMD160

let hash = RIPEMD160.hash(data: data)
```

## License

`RIPEMD160` is licensed under the terms of the MIT license. See the [LICENSE](LICENSE) file for more information.
