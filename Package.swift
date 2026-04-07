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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterDTExchangeTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterDTExchange"),
                .target(name: "REVUPMediaMaxAdapterDTExchangeMediationAdapter"),
                .target(name: "IASDKCore"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchange",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterDTExchange.zip",
            checksum: "cbf76e6078a3e957bb48d55185d03268cf82eb8e23555cb0939cad8922184be1"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterDTExchangeMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationFyberAdapter.xcframework.zip",
            checksum: "80ab1cd604ba08ad45ffff98e8ba7b9f3a337ab031113486c0256b78d66462be"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/IASDKCore.xcframework.zip",
            checksum: "8aace3da1d23f609fbc839c71e677be637157b1bf10a3db1d8617807645b0050"
        ),
    ]
)
