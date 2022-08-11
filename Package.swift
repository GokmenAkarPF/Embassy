// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Embassy",
    platforms: [.iOS(.v14)],
    products: [.library(name: "Embassy", targets: ["Embassy"])],
    dependencies: [
        .package(
            name: "Ambassador",
            url: "https://github.com/envoy/Ambassador",
            .upToNextMinor(from: Version(4, 0, 5))
        )
    ],
    targets: [
        .target(
            name: "Embassy",
            dependencies: ["Ambassador"],
            path: "./Sources"
        )
    ]
)
