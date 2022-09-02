//
//  PokemonRepository.swift
//  Repositories
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Combine
import Entities
import Teste


public protocol PokemonRepository {
    mutating func getPokemons(limit: Int, offset: Int) -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error>
}
