//
//  FetchPokemonsUseCase.swift
//  Usecases
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Combine
import Utils
import Entities
import Repositories
import Teste


public class FetchPokemonsUseCase: UseCase {
    public typealias RequestValue = (limit: Int, offset: Int)
    public typealias ResponseValue = AnyPublisher<(pokemons: [Pokemon], count: Int), Error>
    
    @Inject var repository: PokemonRepository
    
   public init() {}
    
     public func execute(value: (limit: Int, offset: Int)) -> AnyPublisher<(pokemons: [Pokemon], count: Int), Error> {
        return repository.getPokemons(limit: value.limit, offset: value.offset)
    }

}
