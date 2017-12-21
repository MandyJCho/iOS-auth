//
//  People.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

struct Character {
    let name: String
    let height: Int
    let mass: Int
    let hairColor: String
    let skinColor: String
    let eyeColor: String
    let birthYear: String
    let gender: String
    let homeworld: URL
    let films: [URL]
    let species: [URL]
    let vehicles: [URL]
    let starships: [URL]
    let created: Date
    let edited: Date
    let url: URL
    
    init(_ formatted: [String: Any]) {
        self.name = formatted["name"] as! String
        self.height = formatted["height"] as! Int
        self.mass = formatted["mass"] as! Int
        self.hairColor = formatted["hairColor"] as! String
        self.skinColor = formatted["skinColor"] as! String
        self.eyeColor = formatted["eyeColor"] as! String
        self.birthYear = formatted["birthYear"] as! String
        self.gender = formatted["gender"] as! String
        self.homeworld = formatted["homeworld"] as! URL
        self.films = formatted["films"] as! [URL]
        self.species = formatted["species"] as! [URL]
        self.vehicles = formatted["vehicles"] as! [URL]
        self.starships = formatted["starships"] as! [URL]
        self.created = formatted["created"] as! Date
        self.edited = formatted["edited"] as! Date
        self.url = formatted["url"] as! URL
    }
    
}

// MARK: Equatable
func ==(lhs: Character, rhs: Character) -> Bool {
    return lhs.name == rhs.name
}

// MARK: Hashable
extension Character: Hashable {
    var hashValue: Int {
        return name.hashValue
    }
}

// MARK: Decodable
extension Character: Decodable {
    enum CodingKeys: String, CodingKey {
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
    
    init(from decoder: Decoder) throws {
        // container
        let values = try decoder.container(keyedBy: CodingKeys.self)
        var formatted: [String: Any] = [:]
        for key in values.allKeys {
            let result: Any
            if let value = try? values.decode(URL.self, forKey: key) {
                result = value
            } else if let value = try? values.decode([URL].self, forKey: key){
                result = value
            } else if let value = try? values.decode(Int.self, forKey: key){
                result = value
            }  else if let value = try? values.decode(Date.self, forKey: key){
                result = value
            } else {
                result = try values.decode(String.self, forKey: key)
            }
            
            formatted[key.stringValue] = result
        }
        
        self.init(formatted)
    }
}

