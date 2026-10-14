// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "1.54.5"..<"1.59.99"
let banubaCoreVersionRange: Range<Version> = "1.54.5"..<"1.59.99"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", banubaUtilsVersionRange),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", banubaCoreVersionRange)
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaSDKSimple/1.54.5/BanubaSdkSimple-1.54.5.xcframework.zip",
      checksum: "e705161497e983fcfd366d7bb2bef24fcbbbf1064c1a3ee630a26d25e9370762"
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
