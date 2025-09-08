//
//  ContentView.swift
//  App
//
//  Created by Nunu Nugraha on 04/09/25.
//

import SwiftUI
import Common
import Cart
import Product

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: ProductView(action: {
                    CartView(action: { ProductDetailView() })
                })
                ) {
                    Text("Open Product")
                }
            }.navigationBarTitle("Modular")
        }
    }
}

#Preview {
    ContentView()
}
