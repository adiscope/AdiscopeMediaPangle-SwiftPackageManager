// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaPangle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaPangle",
            targets: ["AdiscopeMediaPangleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "7.4.1-release.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaPangleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaPangle"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.2/AdiscopeMediaPangle.zip",
            checksum: "14f24ba0db7138200d7873063ae2105a9b6f9befc14e4289bc58cc1699d6cc46"
        ),
    ]
)
