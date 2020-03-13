// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ColorKit",
    products: [
        .library(
            name: "ColorKit",
            targets: ["ColorKit"]
        ),
    ],
    targets: [
        .target(
            name: "ColorKit"
        ),
        .testTarget(
            name: "ColorKit.Test",
            dependencies: ["ColorKit"]
        ),
    ]
)
