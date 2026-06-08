// swift-tools-version:5.9

import PackageDescription

let version: Version = "1.53.0-beta.0"

let package = Package(
  name: "BanubaSdkSimple",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaSdkSimple",
      targets: ["BanubaSdkSimpleTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", exact: version),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", exact: version)
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaSDKSimple/1.53.0-beta.0/BanubaSdkSimple-1.53.0-beta.0.xcframework.zip",
      checksum: "a5880f99b4aa354d0211d5d0c3a4eef5c3b0b9a7ecae8a7b2d1f7b160b2a86f0"
    ),
    .target(
      name: "BanubaSdkSimpleTarget",
      dependencies: [
        .target(name: "BanubaSdkSimpleWrapper")
      ],
      path: "BanubaSdkSimpleTarget"
    ),
    .target(
      name: "BanubaSdkSimpleWrapper",
      dependencies: [
        "BanubaSdkSimple",
        .product(name: "BanubaUtilities", package: "BanubaUtilities-iOS"),
        .product(name: "BanubaVideoEditorCore", package: "BanubaVideoEditorCore-iOS"),
      ],
      path: "BanubaSdkSimpleWrapper"
    ),
  ]
)
