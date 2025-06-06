//
//  RMEpisode.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import Foundation

struct RMEpisode: Codable, RMEpisodeDataRender {
    let id: Int
    let name: String
    let air_date: String
    var episode: String
    let characters: [String]
    let url: String
    let created: String
}
