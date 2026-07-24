// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterDTExchange",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterDTExchange",
            targets: ["REVUPMediaMaxAdapterDTExchangeTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.7")
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.1/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "a680b64d452fea7b4aeabbb05010dac9837d7c81cc7c842fb4fb933a547fbe2c"
        ),
        .binaryTarget(
            name: "AppLovinMediationFyberAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.7.0.zip",
            checksum: "eb779a6b34e8d19ebb5a1436a666332308cc559355c48063e6d202d0c850480b"
        )
    ]
)
