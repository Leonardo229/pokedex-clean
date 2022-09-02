//
//  ContentView.swift
//  PokedexClean
//
//  Created by Leonardo Coelho on 23/08/22.
//

import SwiftUI
import Foundation
import PokedexList
import DI

struct ContentView: View {
    public let pokedexListModule = PokedexListModule()

    var body: some View {
            NavigationView{
                
                NavigationLink(isActive: .constant(true), destination:{ PokedexListEntryView(params: [:])}, label: {EmptyView()})
            }.navigationBarHidden(true)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
