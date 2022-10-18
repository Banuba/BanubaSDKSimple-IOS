// swift-tools-version:5.3
import PackageDescription
let package = Package(
  name: "BanubaSdkSimple",
  platforms: [
    .iOS(.v12)
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
