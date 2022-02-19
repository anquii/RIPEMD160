// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "RIPEMD160",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "RIPEMD160",
            targets: ["RIPEMD160"]
        )
    ],
    targets: [
        .target(
            name: "RIPEMD160"
        ),
        .testTarget(
            name: "RIPEMD160Tests",
            dependencies: ["RIPEMD160"]
        )
    ]
)
