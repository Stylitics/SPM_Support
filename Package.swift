// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StyliticsSPM",
    platforms: [
           .iOS(.v13)
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "StyliticsSPM",
            targets: ["StyliticsSPM", "StyliticsData", "StyliticsUI"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "StyliticsSPM"),
        .binaryTarget(name: "StyliticsData",
                      path: "Sources/StyliticsData.xcframework"
                     ),
        .binaryTarget(name: "StyliticsUI",
                      path: "Sources/StyliticsUI.xcframework"
                     ),
    ]
)
