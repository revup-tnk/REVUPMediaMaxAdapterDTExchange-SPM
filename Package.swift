// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterDTExchange",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterDTExchange",
            targets: ["REVUPMediaMaxAdapterDTExchangeTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.8")
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterDTExchangeTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterDTExchange"),
                .target(name: "AppLovinMediationFyberAdapter"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
            ],
            path: "Sources",
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchange",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "81c292c5da203465465ecb1fa279a3091d2247b67f58beb5405df556290387ac"
        ),
        .binaryTarget(
            name: "AppLovinMediationFyberAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.8.0.zip",
            checksum: "cccae71e86237fd3860a077872030fb6d2c797076bc82497c6d01fccad106948"
        )
    ]
)
