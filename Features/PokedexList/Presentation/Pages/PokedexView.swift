//
//  PokedexView.swift
//  PokedexList
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import SwiftUI
import Teste


struct PokedexView: View {
    
    @State var animatedLoading = false

    
    @ObservedObject var viewModel : PokedexVM = DependencyInjector.resolve()
    
    var body: some View {
        NavigationView {
            VStack {
                
                if viewModel.isLoading {
                    
                    VStack {
                        Image("pokeball")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .offset(y: animatedLoading ? -10 : 0)
                            .animation(
                                .interpolatingSpring(stiffness: 350, damping: 5, initialVelocity: 100).repeatForever(autoreverses: false),
                                value: animatedLoading
                            )
                        
                            .onAppear {
                                animatedLoading.toggle()
                            }
                        Text("Loading...")
                    }
                } else {
                    ScrollView{
                        LazyVStack {
                            ForEach(viewModel.pokemonsList, id: \.id) {
                                pokemon in
                                PokemonCard(pokemon: pokemon)
                                    .onAppear {
                                        if viewModel.pokemonsList.last == pokemon {
                                            viewModel.refreshList()
                                        }
                                    }
                            }
                            
                        }
                    }
                }
                
                
                
                
                
            }.navigationTitle("Pokedex")
                .onAppear {
                    viewModel.getPokemonList()
                }
                .animation(.easeInOut, value: viewModel.isLoading)


        }
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
