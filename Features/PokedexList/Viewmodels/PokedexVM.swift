//
//  PokedexVM.swift
//  PokedexList
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Combine
import Entities
import Usecases
import Utils
import Teste


public class PokedexVM: ObservableObject {
    var subscriptions = Set<AnyCancellable>()

    
    @Published var isLoading: Bool = true
    @Published var pokemonsList: [Pokemon] = []
    @Published var hasError: Bool = false
    
    private var count: Int = 0
    private var limit: Int = 20
    private var offset: Int = 0
    
    
    @Inject var fetchPokemonsUseCase: FetchPokemonsUseCase
    
    public init() {
    }
    
    
    func getPokemonList() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.getData()
        }
        
    }
    
    func refreshList() {
        getData()
    }
    
    func getData() {
        print("entrou")

        fetchPokemonsUseCase.execute(value: (limit: limit, offset: offset))
            .sink(
            receiveCompletion: {
                error in
                self.hasError = true
                self.isLoading = false

                print("erro")
            },
            receiveValue: {
                data in
                self.isLoading = false
                self.count = data.count
                self.pokemonsList += data.pokemons
                self.offset += self.limit
            }).store(in: &subscriptions)
    }
    
    
}
