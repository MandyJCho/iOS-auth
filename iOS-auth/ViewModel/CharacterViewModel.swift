//
//  CharacterViewModel.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

class CharacterViewModel : NSObject {
    let character: Character
    
    // DI of client from storyboard
    @IBOutlet dataAccessClient: DataAccessClient!
}
