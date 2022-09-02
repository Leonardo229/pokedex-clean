//
//  Pokemon.swift
//  Entities
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import SwiftUI

public struct Pokemon: Identifiable, Equatable {
    public var id: String
    public var name: String
    public var pokedexNumber: Int
    public var mainImageUrl: String?
    public var mainColor: Color? = nil
    
    public init(id: String, name: String, pokedexNumber: Int, mainImageUrl: String?) {
        self.id = id
        self.name = name
        self.pokedexNumber = pokedexNumber
        self.mainImageUrl = mainImageUrl
    }

}
