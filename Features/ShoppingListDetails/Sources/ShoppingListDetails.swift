//
//  ShoppingListDetails.swift
//  ShoppingList
//
//  Created by Kais Segni on 04/12/2024.
//

import SwiftUI
import CommonUI
import Common
import Navigation

public struct ShoppingListDetails: View {
    
    public init() {}
    public var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Add items to your list")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading])
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ShoppingListDetailsPreview: PreviewProvider {
    static var previews: some View {
        ShoppingListDetails()
    }
}
