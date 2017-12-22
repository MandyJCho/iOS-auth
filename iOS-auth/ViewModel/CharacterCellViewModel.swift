//
//  CharacterViewModel.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

class CharacterCellViewModel {
    let character: Character
    let height: Height
    
    struct Height {
        var feet: Int
        var inches: Int
    }
    
    enum Gender {
        case male
        case female
    }
    
    init(character: Character) {
        self.character = character
    }
}
