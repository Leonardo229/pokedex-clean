//
//  BaseListResponse.swift
//  Network
//
//  Created by Leonardo Coelho on 26/08/22.
//

import Foundation

public struct BaseListResponse<T: Codable> : Codable {
    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [T]?
}
