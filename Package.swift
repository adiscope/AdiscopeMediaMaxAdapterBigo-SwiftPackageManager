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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterBigo.zip",
            checksum: "5c9613fb2cdb2a3d8a1262cfe859ed277149cfbebc4bee7dafb2e41ce00f0e69"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterBigoMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationBigoAdsAdapter.xcframework.zip",
            checksum: "9e22b7b377544f2d91f3b4e63e631d019dd14122359407bc226369e26ee2eefb"
        ),
        .binaryTarget(
            name: "BigoADS",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/BigoADS.xcframework.zip",
            checksum: "dddec8f8962493f089e9d040a23fb88299c60f662bb9e422a66eff88edd5837d"
        ),
    ]
)
