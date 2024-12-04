//
//  BaseHostingViewController.swift
//  Common
//
//  Created by Kais Segni on 04/12/2024.
//

import Foundation
import SwiftUI
import UIKit

open class BaseHostingViewController<Content: View>: UIHostingController<Content> {
    var navigator: Navigator?
    
    public init(navigator: Navigator, rootView: Content) {
        self.navigator = navigator
        super.init(rootView: rootView)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
