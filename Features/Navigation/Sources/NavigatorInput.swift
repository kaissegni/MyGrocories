//
//  Coordinator.swift
//  Common
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import UIKit

protocol NavigatorInput {
    var navigationController: UINavigationController? { get }
    
    func start()
    func navigate(to route: Route)
    func present(_ viewController: UIViewController, animated: Bool)
    func dismiss(animated: Bool)
}
