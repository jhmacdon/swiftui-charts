// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ChartsUI",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "ChartsUI", targets: ["ChartsUI"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-extensions/swiftui-shapes.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "ChartsUI",dependencies: ["Shapes"])
    ]
)
