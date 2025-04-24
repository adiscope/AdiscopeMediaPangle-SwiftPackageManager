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
        .package(url: "https://github.com/adiscope/Adiscope-iOS-Pangle.git", exact: "4.2.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaPangle.zip",
            checksum: "623303673d1588369aa66d00861df3ed1326847cc33a476bb0ec90e96f3c1ca5"
        ),
    ]
)
