// swift-tools-version:5.5
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
    dependencies: [],
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
