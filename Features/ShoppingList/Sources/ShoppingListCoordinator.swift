//
//  ShoppingListCoordinator.swift
//  ShoppingList
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import ShoppingListDetails
import Navigation
import SwiftUI

class ShoppingListCoordinator: Navigator {
    
    override init(navigationController: UINavigationController) {
        super.init(navigationController: navigationController)
    }
    
    override func start() {
        let shoppingListView = ShoppingListView(self)
        let hostingController = BaseHostingViewController(navigator: self, rootView: shoppingListView)
        navigationController?.pushViewController(hostingController, animated: false)
    }
    
    func coordinateToShoppingListDetails() {
        let detailsViewController = BaseHostingViewController(
            navigator: self,
            rootView: ShoppingListDetails()
        )
        navigate(to: .push(detailsViewController))
    }
}
