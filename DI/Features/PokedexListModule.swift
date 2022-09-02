//
//  PokedexListModule.swift
//  DI
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Network
import Utils
import Repositories
import RepositoriesImpl
import Usecases
import PokedexList
import Teste

public class PokedexListModule {
    public init(){
//        @Provider  var pokemonService = PokemonService()
//        @Provider  var pokemonRepo = PokemonRepositoryImpl() as PokemonRepository
//        @Provider  var fetchPokemonsUseCase = FetchPokemonsUseCase()
        
        DependencyInjector.register(dependency: PokemonService())
        DependencyInjector.register(dependency: PokemonRepositoryImpl() as PokemonRepository)
        DependencyInjector.register(dependency: FetchPokemonsUseCase())
        DependencyInjector.register(dependency: PokedexVM())
     }
}

