import ProjectDescription

let project = Project(
    name: "MyGrocoriesApp",
    targets: [
        .target(
            name: "ShoppingList",
            destinations: .iOS,
            product: .app,
            bundleId: "com.shoppenhavn.ShoppingList",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["Features/ShoppingList/Sources/**"],
            resources: ["Features/ShoppingList/Resources/**"],
            dependencies: [
                .target(name: "ShoppingListDetails"),
                .target(name: "CommonUI"),
                .target(name: "Common"),
                .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "CommonUI",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.CommonUI",
            infoPlist: .default,
            sources: ["Features/CommonUI/Sources/**"],
            resources: ["Features/CommonUI/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Common",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.Common",
            infoPlist: .default,
            sources: ["Features/Common/Sources/**"],
            resources: ["Features/Common/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "Navigation",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.Navigation",
            infoPlist: .default,
            sources: ["Features/Navigation/Sources/**"],
            dependencies: []
        ),
        .target(
            name: "ShoppingListDetails",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.ShoppingListDetails",
            infoPlist: .default,
            sources: ["Features/ShoppingListDetails/Sources/**"],
            resources: ["Features/ShoppingListDetails/Resources/**"],
            dependencies: [
                .target(name: "CommonUI"),
                .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "ShoppingListTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.shoppenhavn.ShoppingListTests",
            infoPlist: .default,
            sources: ["Features/ShoppingList/Tests/**"],
            resources: ["Features/ShoppingList/Resources/**"],
            dependencies: []
        ),
    ]
)
