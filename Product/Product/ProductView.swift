//
//  ProductView.swift
//  Product
//
//  Created by Nunu Nugraha on 08/09/25.
//

import SwiftUI
import Common
import Core

public struct ProductView<
    Destination: View,
    UseCase: UseCaseType
>: View where UseCase.Request == String, UseCase.Response == String {
    
    let action: (() -> Destination)
    
    let presenter: GetProductPresenter<String, String, UseCase>
    
    public init(
        presenter: GetProductPresenter<String, String, UseCase>,
        action: @escaping (() -> Destination)
    ) {
        self.action = action
        self.presenter = presenter
    }
    
    public var body: some View {
        VStack {
            Image("real-madrid", bundle: Bundle(identifier: "com.dicoding.Common"))
                .resizable()
                .frame(width: 360, height: 120)
            Text("Hi, i'm using Quicksand as Font")
                .font(.custom("Quicksand-SemiBold", size: 20))
            Text("Hi, i'm using framework's Bangers Reguler as Font", bundle: Bundle(identifier: "com.dicoding.Common"))
                  .font(.custom("Bangers-Regular", size: 20))
            Text("Hi, i'm using framework's PlusJakartaSans-Italic-VariableFont_wght as Font", bundle: Bundle(identifier: "com.dicoding.Common"))
                  .font(.custom("PlusJakartaSans-BoldItalic", size: 20))
            
            Text("Hi, I'm changing my name from Dicoding to \(getProductPresenter.execute(request: "Dicoding"))")
            Spacer()
            
            NavigationLink(destination: action()) {
                Text("Go to Detail")
            }
        }.navigationBarTitle("product_title".localized(identifier: "com.dicoding.Product"))
    }
}

extension ProductView {
    var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
        GetProductPresenter(useCase: GetProductUseCase())
    }
}
