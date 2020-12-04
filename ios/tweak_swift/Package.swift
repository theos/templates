// swift-tools-version:5.2

import PackageDescription
import Foundation

guard let theosPath = ProcessInfo.processInfo.environment["THEOS"] else {
    fatalError("""
    THEOS env var not set. If you're using Xcode, open this package with `make dev`
    """)
}

let package = Package(
    name: "@@PROJECTNAME@@",
    platforms: [.iOS("12.2")],
    products: [
        .library(
            name: "@@PROJECTNAME@@",
            targets: ["@@PROJECTNAME@@"]
        ),
    ],
    dependencies: [
        .package(name: "Orion", path: "\(theosPath)/vendor/swift-support/orion")
    ],
    targets: [
        .target(
            name: "@@PROJECTNAME@@C",
            dependencies: [.product(name: "Substrate", package: "Orion")],
            cxxSettings: [.unsafeFlags(["-fcxx-modules"])]
        ),
        .target(
            name: "@@PROJECTNAME@@",
            dependencies: ["@@PROJECTNAME@@C", "Orion"]
        ),
    ]
)
