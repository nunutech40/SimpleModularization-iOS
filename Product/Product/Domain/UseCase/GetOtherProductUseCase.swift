//
//  GetOtherProductUseCase.swift
//  Product
//
//  Created by Nunu Nugraha on 16/09/25.
//

import Core

public struct GetOtherProductUseCase: UseCaseType {

    public typealias Request = String
    public typealias Response = String
    
    public init() {}
    
    public func execute(request: Request) -> Response {
        return request.uppercased()
    }
    
}
