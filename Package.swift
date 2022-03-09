// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JsonBenchmark",
    platforms: [
        .macOS(.v10_13)
    ],
    dependencies: [
        .package(url: "https://github.com/Ikiga/IkigaJSON.git", from: "2.0.0"),
        .package(url: "https://github.com/michaeleisel/ZippyJSON.git", from: "1.2.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "JsonBenchmark",
            dependencies: ["IkigaJSON", "ZippyJSON"]),
        .testTarget(
            name: "JsonBenchmarkTests",
            dependencies: ["JsonBenchmark"],
            resources: [
                .process("Resources")]),
    ]
)
