//
//  Navigator.swift
//  Common
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import UIKit

open class Navigator: NavigatorInput {
    open var navigationController: UINavigationController?
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    open func start() {}

    open func navigate(to route: Route) {
        switch route {
        case .push(let viewController):
            push(viewController)
        case .modal(let viewController):
            present(viewController, animated: true)
        case .pop:
            pop()
        case .popToRoot:
            popToRoot()
        case .dismiss:
            dismiss(animated: true)
        }
    }

    private func push(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }

    func present(_ viewController: UIViewController, animated: Bool) {
        navigationController?.present(viewController, animated: animated, completion: nil)
    }

    private func pop() {
        navigationController?.popViewController(animated: true)
    }

    private func popToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }

    func dismiss(animated: Bool) {
        navigationController?.dismiss(animated: animated, completion: nil)
    }
}
