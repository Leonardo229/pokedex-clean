//
//  PokemonDTO.swift
//  Network
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation

import Foundation
import UIKit
import SwiftUI
import Entities
import Utils

public struct PokemonDTO: Codable {
    public var name: String?
    public var url: String?
}

public extension PokemonDTO {
    public func toDomain() -> Pokemon {
        let number: Int = Int(URL.init(string: self.url ?? "")?.lastPathComponent ?? "0") ?? 0

        return Pokemon(id: "\(number)", name: self.name ?? "Unknow", pokedexNumber: number, mainImageUrl: "\(POKEMON_IMAGE_URL)\(number).png")
    }
}
