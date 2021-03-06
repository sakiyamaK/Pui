// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pui",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
         .executable(name: "pui", targets: ["Pui"]),
        .library(
            name: "PuiCore",
            targets: ["PuiCore"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(name: "Yaml", url: "https://github.com/behrang/YamlSwift.git", from: "3.4.4"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.3.2"),
        .package(url: "https://github.com/kareman/SwiftShell.git", from: "5.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Pui",
            dependencies: [
              .product(name: "ArgumentParser", package: "swift-argument-parser"), 
              "PuiCore"]
        ),
        .target(name: "PuiCore",
                dependencies: [
                  .product(name: "ArgumentParser", package: "swift-argument-parser"),
                  "Yaml",
                  "SwiftShell",
                ]),
        .testTarget(
            name: "PuiTests",
            dependencies: ["PuiCore"]),
    ]
)
