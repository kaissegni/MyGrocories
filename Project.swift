import ProjectDescription

let project = Project(
    name: "ShoppingListApp",
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
            sources: ["ShoppingList/Sources/**"],
            resources: ["ShoppingList/Resources/**"],
            dependencies: [
                .target(name: "ShoppingListDetails"),
                .target(name: "CommonUI"),
                .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "ShoppingListDetails",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.ShoppingListDetails",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["ShoppingListDetails/Sources/**"],
            resources: ["ShoppingListDetails/Resources/**"],
            dependencies: [
                .target(name: "CommonUI"),
                .external(name: "ComposableArchitecture")
            ]
        ),
        .target(
            name: "CommonUI",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.shoppenhavn.CommonUI",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["CommonUI/Sources/**"],
            resources: ["CommonUI/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "ShoppingListTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.shoppenhavn.ShoppingListTests",
            infoPlist: .default,
            sources: ["ShoppingList/Tests/**"],
            resources: ["ShoppingList/Resources/**"],
            dependencies: []
        ),
    ]
)
