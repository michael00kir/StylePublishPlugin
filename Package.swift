// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StylePublishPlugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "StylePublishPlugin",
            targets: ["StylePublishPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Publish", from: "0.8.0")
    ],
    targets: [
        .target(
            name: "StylePublishPlugin",
            dependencies: ["Publish"]),
        .testTarget(
            name: "StylePublishPluginTests",
            dependencies: ["StylePublishPlugin"]),
    ]
)
