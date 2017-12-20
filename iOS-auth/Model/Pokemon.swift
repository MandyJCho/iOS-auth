//
//  Pokemon.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

class Pokemon {
    let id: Int
    let name: String
    let baseExperience: Int
    let height: Int
    let order: Int
    let isDefault: Int
    
    init(id: Int, name: String, baseExperience: Int, height: Int, order: Int, isDefault: Int) {
        self.id = id
        self.name = name
        self.baseExperience = baseExperience
        self.height = height
        self.order = order
        self.isDefault = isDefault
    }
}
