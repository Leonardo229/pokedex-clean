//
//  HttpService.swift
//  Network
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation
import Combine
import Alamofire
import Utils

struct HttpService<T: Decodable> {
    
    static func makeGetRequest(endPoint: String) -> Future<T, APIErrors>{
        return Future<T,APIErrors> { promise in
            let request = AF.request(URL(string: "\(API)\(endPoint)")!, method: .get)
            request.responseDecodable(of: T.self, decoder: JSONDecoder()) { (response) in
                switch response.result{
                case .failure(_):
                    if let httpStatusCode = response.response?.statusCode {
                        switch(httpStatusCode) {
                        case 401:
                            promise(.failure(.Forbidden))
                            break
                        case 404:
                            promise(.failure(.NotFound))
                            break
                        case 500:
                            promise(.failure(.ServiceUnavailable))
                            break
                        default:
                            promise(.failure(.InternalError))
                            break
                        }
                    } else {
                        promise(.failure(.InternalError))
                    }
                    break;
                case .success(let data):
                    print(data)
                    promise(.success(data))
                    break;
                }
                
            }
            
        }
        
        
    }
}
