//
//  PokemonService.swift
//  Network
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Combine
import Utils
import Teste


public class PokemonService {
    
    private let path = "pokemon"
    
    public init(){}
    
    public func getPokemons(limit: Int, offset: Int) -> Future<BaseListResponse<PokemonDTO>, APIErrors> {
        return HttpService<BaseListResponse<PokemonDTO>>.makeGetRequest(endPoint: "\(path)?limit=\(limit)&offset=\(offset)")
    }
}
