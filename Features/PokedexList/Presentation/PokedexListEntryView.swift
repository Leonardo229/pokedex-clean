//
//  PokedexListEntryView.swift
//  PokedexList
//
//  Created by Leonardo Coelho on 24/08/22.
//

import SwiftUI
import Utils

public struct PokedexListEntryView: View, EntryView {
    public var params: [String : Any]
    
    public init(params: [String : Any]) {
        self.params = params
    }
    
    public var body: some View {
        PokedexView().navigationBarHidden(true)
    }
}

struct PokedexListEntryView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexListEntryView(params: [:])
    }
}

