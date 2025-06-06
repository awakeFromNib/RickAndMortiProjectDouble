//
//  RMGetAllCharactersResponse.swift
//  RickAndMortyDouble
//
//  Created by Sergei Anisimoff on 18.02.2025.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
