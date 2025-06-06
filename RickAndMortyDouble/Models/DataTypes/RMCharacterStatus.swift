//
//  RMCharacterStatus.swift
//  RickAndMortyDouble
//
//  Created by Sergei Anisimoff on 24.01.2025.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
