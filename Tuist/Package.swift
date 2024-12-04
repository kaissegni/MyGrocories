// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        productTypes: ["ComposableArchitecture": .framework,]
    )
#endif

let package = Package(
    name: "ComposableArchitecture",
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            exact: Version.init(1, 17, 0)
        )
    ]
)
