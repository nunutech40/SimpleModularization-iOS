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
            Image("real-madrid", bundle: Bundle(identifier: "com.dicoding.Common"))
                .resizable()
                .frame(width: 360, height: 120)
            Text("Hi, i'm using Quicksand as Font")
                .font(.custom("Quicksand-SemiBold", size: 20))
            NavigationLink(destination: action()) {
                Text("Go to Detail")
            }
        }.navigationBarTitle("Product")
    }
}
