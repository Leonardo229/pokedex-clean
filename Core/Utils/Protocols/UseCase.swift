//
//  UseCase.swift
//  Utils
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation

public protocol UseCase {
    associatedtype RequestValue
    associatedtype ResponseValue
    
    mutating func execute(value: RequestValue) -> ResponseValue

}
