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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Fyber.git", exact: "8050100.0.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterDTExchangeTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterDTExchange"),
                .product(name: "AppLovinMediationFyberAdapter", package: "AppLovin-MAX-Swift-Package-Fyber"),
            ],
            path: "Sources",
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchange",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "7e83b8fe192d8f5bbfde808297cc8904eadb4a350d78d94daa0b9ce8edb7addc"
        ),
    ]
)
