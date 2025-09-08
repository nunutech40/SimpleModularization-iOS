//
//  ProductView.swift
//  Product
//
//  Created by Nunu Nugraha on 08/09/25.
//

import SwiftUI

public struct ProductView<Destination: View>: View {
    let action: (() -> Destination)
    
    public init(action: @escaping (() -> Destination)) {
        self.action = action
    }
    
    public var body: some View {
        VStack {
            NavigationLink(destination: action()) {
                Text("Go to Detail")
            }
        }.navigationBarTitle("Product")
    }
}
