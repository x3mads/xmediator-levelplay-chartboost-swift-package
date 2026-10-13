// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayChartboostAdapterCompatibility",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "LevelPlayChartboostAdapter", targets: ["LevelPlayChartboostAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Chartboost-Adapter-Swift-Package.git", exact: "5.9.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayChartboostAdapterWrapper",
            dependencies: [
                .product(
                    name: "ChartboostAdapter",
                    package: "LevelPlay-Chartboost-Adapter-Swift-Package",
                    moduleAliases: ["ChartboostAdapter": "LevelPlayChartboostAdapterTarget"]
                ),
            ]
        ),
    ]
)
