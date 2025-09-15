//
//  GetProductUseCase.swift
//  Product
//
//  Created by Nunu Nugraha on 09/09/25.
//

import Core

public struct GetProductUseCase: UseCaseType {
    
    public typealias Request = String
    public typealias Response = String
    
    public init() { }
    
    public func execute(request: Request) -> Response {
        // example of business logic, reverse a string!
        return String(request.reversed())
    }
}

