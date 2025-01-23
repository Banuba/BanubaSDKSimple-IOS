// swift-tools-version:5.9

import PackageDescription

let videoEditorSDKRange: Range<Version> = "1.40.0"..<"1.49.99"

let package = Package(
  name: "BanubaSdkSimple",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaSdkSimple",
      targets: [
        "BanubaSdkSimple",
        "BanubaUtilities",
        "BanubaVideoEditorCore"
      ]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", videoEditorSDKRange),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", videoEditorSDKRange)
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      path: "BanubaSdkSimple.xcframework"
    ),
    .binaryTarget(
      name: "BanubaUtilities",
      path: "BanubaUtilities.xcframework"
    ),
    .binaryTarget(
      name: "BanubaVideoEditorCore",
      path: "BanubaVideoEditorCore.xcframework"
    )
  ]
)
