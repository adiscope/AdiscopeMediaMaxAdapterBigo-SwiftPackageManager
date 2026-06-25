// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterBigo",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterBigo",
            targets: ["AdiscopeMediaMaxAdapterBigoTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterBigoTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterBigo"),
                .target(name: "AdiscopeMediaMaxAdapterBigoMediationAdapter"),
                .target(name: "BigoADS"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBigo",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterBigo.zip",
            checksum: "040ed90d22f89c54d2522e1b7695ebcf9c5f4c18d27cd48c83e1d7f3ba49bfca"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "1a7dfa7eda886c774cc0ee7a26f95efdd91b838ea47404cc6dc20ded634039c1"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/BigoADS.xcframework.zip",
            checksum: "0fa8df7a3ce560ae1677087db368b32c013d3a556f5c246f381975421044630d"
        ),
    ]
)
