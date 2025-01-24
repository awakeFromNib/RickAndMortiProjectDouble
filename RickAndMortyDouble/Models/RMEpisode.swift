//
//  RMEpisode.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let characters: [String]
    let url: String
    let created: String
}
