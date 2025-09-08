//
//  CartView.swift
//  Cart
//
//  Created by Nunu Nugraha on 04/09/25.
//

import SwiftUI

public struct CartView<Destination: View>: View {
    
    let action: (() -> Destination)
    
    public init(action: @escaping (() -> Destination)) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            NavigationLink(destination: self.action()) {
                Text("Open Product Detail")
            }
        }.navigationBarTitle("Cart")
    }
    
}
