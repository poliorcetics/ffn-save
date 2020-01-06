// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ffn-save",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(name: "ffn-save", targets: ["ffn-save"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/groue/GRDB.swift.git", from: "4.7.0"),
    .package(url: "https://github.com/poliorcetics/ffn-dl.git", from: "0.2.1"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(name: "ffn-save", dependencies: ["GRDB", "ffn-dl"]),
    .testTarget(name: "ffn-saveTests", dependencies: ["ffn-save"]),
  ]
)
