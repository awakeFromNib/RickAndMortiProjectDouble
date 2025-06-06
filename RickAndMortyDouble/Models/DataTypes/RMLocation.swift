//
//  RMLocation.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
