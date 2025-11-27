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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaPangle.zip",
            checksum: "f62cf458f4aa4525f7838a16f26f84765a96ea5befc6ad3fa661249ac659a752"
        ),
    ]
)
