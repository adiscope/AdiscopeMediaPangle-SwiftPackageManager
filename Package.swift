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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaPangleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaPangle"),
                .product(name: "AdiscopeWithPangle", package: "Adiscope-iOS-Pangle"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaPangle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaPangle.zip",
            checksum: "937395191ca8f44acb746fa01339c09315a07aff0dc7f0f1fadf046ed7ba14b3"
        ),
    ]
)
