//
//  People.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

class Character : Decodable {
    let name: String
    let height: Int
    let mass: Int
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    let homeworld: URL
    let films: [String]
    let species: String
    let vehicles: [String]
    let starships: [String]
    let created: String
    let edited: String
    let url: String
    
    enum CodingKeys: String, CodingKeys {
        case name
        case height
        case mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender
        case homeworld
        case films
        case species
        case vehicles
        case starships
        case created
        case edited
        case url
    }
}
