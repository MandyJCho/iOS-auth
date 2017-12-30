//
//  CharacterViewModel.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

class CharacterViewModel : NSObject {
    var character: Character?
    var height : (Int, Int) {
        get {
            if let person = character {
                return (Int((person.height * 0.393701) / 12), (Int(person.height * 0.393701) % 12))
            }
            return (0, 0)
        }
    }
    
    // DI of client from storyboard
    let dataAccessClient: DataAccessClient!
    
    init(client dataAccessClient: DataAccessClient, character: Character?) {
        self.dataAccessClient = dataAccessClient
        self.character = character
    }
    
    convenience init(dataAccessClient: DataAccessClient) {
        self.init(client: dataAccessClient, character: nil)
    }

}
