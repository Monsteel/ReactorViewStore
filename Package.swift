// swift-tools-version: 5.8

import PackageDescription

let package = Package(
  name: "ReactorViewStore",
  platforms: [
    .macOS(.v10_11), .iOS(.v9), .tvOS(.v9), .watchOS(.v3),
  ],
  products: [
    .library(
      name: "ReactorViewStore",
      targets: ["ReactorViewStore"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactorKit/ReactorKit.git", .upToNextMajor(from: "3.0.0")),
  ],
  targets: [
    .target(
      name: "ReactorViewStore",
      dependencies: [
        .product(name: "ReactorKit", package: "ReactorKit"),
      ]
    ),
  ]
)
