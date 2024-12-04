//
//  ShoppingListDetailsCoordinator.swift
//  ShoppingListDetails
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import Navigation
import UIKit

class ShoppingListDetailsCoordinator: Navigator {
    override func start() {
        print("Started")
    }
    
    func navigateToShoppingListDetails() {
        let detailsViewController = BaseHostingViewController(navigator: self, rootView: ShoppingListDetails())
        navigate(to: .push(detailsViewController))
    }
}
