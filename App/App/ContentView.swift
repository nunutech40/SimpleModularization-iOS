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
                NavigationLink(destination: ProductView(
                    presenter: getProductPresenter,
                    action: {
                    CartView(action: { ProductDetailView() })
                })
                ) {
                    Text("Open Product")
                }
            }.navigationBarTitle("Modular")
        }
    }
}

extension ContentView {
    var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
        GetProductPresenter(useCase: GetProductUseCase())
    }
}

#Preview {
    ContentView()
}
