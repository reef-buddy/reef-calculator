// swift-tools-version:5.6
// swiftlint:disable trailing_comma

import PackageDescription

let package = Package(
    name: "ReefCalculator",
    defaultLocalization: "en",
    platforms: [.iOS(.v13), .macOS(.v12)],
    products: [
        .library(
            name: "ReefCalculator",
            targets: ["ReefCalculator"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ReefCalculator",
            dependencies: [],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "ReefCalculatorTests",
            dependencies: ["ReefCalculator"]
        ),
    ]
)
