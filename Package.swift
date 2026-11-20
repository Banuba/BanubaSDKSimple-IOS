// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersion: Version = "1.55.1"
let banubaCoreVersion: Version = "1.55.1"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", exact: banubaUtilsVersion),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", exact: banubaCoreVersion)
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaSDKSimple/1.55.1/BanubaSdkSimple-1.55.1.xcframework.zip",
      checksum: "cc11a1cc12f3c20b457aaa367347cfd037e98d847e9ff4f0856db1a27bcb1394"
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
