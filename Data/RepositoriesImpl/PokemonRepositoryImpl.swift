//
//  PokemonRepositoryImpl.swift
//  RepositoriesImpl
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Repositories
import Network
import Combine
import Entities
import Utils
import Teste


public class PokemonRepositoryImpl: PokemonRepository {
    
    @Inject var pokemonService: PokemonService

    public init() {}
    
    public func getPokemons(limit: Int, offset: Int)  -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error> {
        return pokemonService.getPokemons(limit: limit, offset: offset).map({a in
            return (pokemons: a.results?.map({$0.toDomain()}) ?? [], count: a.count ?? 0)})
        .mapError({error in
            return error
        })
        .eraseToAnyPublisher()
        

    }
}
