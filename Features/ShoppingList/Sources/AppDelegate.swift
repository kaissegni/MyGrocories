//
//  AppDelegate.swift
//  ShoppingList
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import UIKit
import Navigation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var rootCoordinator: Navigator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let navigationController = UINavigationController()
        rootCoordinator = ShoppingListCoordinator(navigationController: navigationController)
        rootCoordinator?.start()
        window?.rootViewController = navigationController
        
        return true
    }
}
