// swift-tools-version:5.3
import PackageDescription
let package = Package(
  name: "BanubaSDKSimple",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "BanubaSdkSimple",
      targets: ["BanubaSdkSimple"])
  ],
  targets: [
    .binaryTarget(
      name: "BanubaSdkSimple",
      path: "BanubaSdkSimple.xcframework")
  ])
