// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "BanubaSdkSimple",
  platforms: [
    .iOS(.v17)
  ],
  products: [
    .library(
      name: "BanubaSdkSimple",
      targets: ["BanubaSdkSimple"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      path: "BanubaSdkSimple.xcframework"
    )
  ]
)
