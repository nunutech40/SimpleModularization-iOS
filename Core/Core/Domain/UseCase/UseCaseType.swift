//
//  UseCaseType.swift
//  Core
//
//  Created by Nunu Nugraha on 09/09/25.
//

import Foundation

public protocol UseCaseType {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request) -> Response
}
