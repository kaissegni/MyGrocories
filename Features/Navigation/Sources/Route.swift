//
//  Route.swift
//  Common
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import UIKit

public enum Route {
    case push(UIViewController)
    case modal(UIViewController)
    case pop
    case popToRoot
    case dismiss
}
