// swift-tools-version: 5.8

import PackageDescription

let package = Package(
  name: "ReactorViewStore",
  platforms: [
    .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6),
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
