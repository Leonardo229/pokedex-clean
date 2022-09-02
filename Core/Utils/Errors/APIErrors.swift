//
//  APIErrors.swift
//  Utils
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation

public enum APIErrors: Error {
    case NotFound           // Recurso não encontrado
    case Forbidden          // Proibido
    case InternalError      // Erro interno
    case ServiceUnavailable // Indisponível
}
