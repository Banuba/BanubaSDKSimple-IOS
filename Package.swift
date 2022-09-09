// swift-tools-version:5.3
import PackageDescription
let package = Package(
  name: "BanubaSDKSimple",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "BanubaSDKSimple",
      targets: ["BanubaSDKSimple"])
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSDKSimple",
      path: "BanubaSDKSimple.xcframework")
  ])
