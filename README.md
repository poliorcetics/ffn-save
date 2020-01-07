# ffn-save

[![Swift5 compatible][Swift5Badge]][Swift5Link] [![SPM compatible][SPMBadge]][SPMLink]

`ffn-save` is a pure Swift library to save fanfictions from differents sites.

## Features

- None yet, the project is still at its beginnings.

## Installation

You will need to have access to **Swift 5.1** at the very least to use this package, as well as **XCode 11**.

The [Swift Package Manager](https://swift.org/package-manager/) automates the distribution of Swift code. To use `ffn-dl` with SPM, add a dependency to your `Package.swift` file:

```swift
let package = Package(
  dependencies: [
    .package(url: "https://github.com/poliorcetics/ffn-dl.git", ...)
    ]
)
```

Note that Linux is not currently supported.

## Building and testing

To build the project, once you have cloned it:

```sh
swift build
```

And to test it:

```sh
swift test
```

Note that this project is a library: you cannot run it.

## License

See `LICENSE` at the root of the project.

[Swift5Badge]: https://img.shields.io/badge/swift-5-orange.svg?style=flat
[Swift5Link]: https://developer.apple.com/swift/

[SPMBadge]: https://img.shields.io/badge/SPM-compatible-4BC51D.svg?style=flat
[SPMLink]: https://github.com/apple/swift-package-manager
