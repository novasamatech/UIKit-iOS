// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "UIKit-iOS"
let package = Package(
    name: name,
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: name,
            targets: [name]),
    ],
    targets: [
        .target(
            name: name,
            path: "UIKit-iOS/Classes"
        ),
        .testTarget(
            name: "Tests",
            dependencies: [
                "UIKit-iOS"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
