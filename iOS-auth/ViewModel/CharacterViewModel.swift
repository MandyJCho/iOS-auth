//
//  CharacterViewModel.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

protocol CharacterVMType {
    
}

class CharacterViewModel : NSObject {
    private var character: Character? = nil
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
    
    init(client dataAccessClient: DataAccessClient) {
        self.dataAccessClient = dataAccessClient
        super.init()
        dataAccessClient.getRandomCharacter { [weak self] (character, error) in
            if error != nil {
                print(error!)
                return
            }
            
            if character != nil {
                self?.character = character
            } else {
                print("Error: Character is nil")
                return
            }
        }
    }
    
    func numberOfAttributesToDisplay(in section: Int) -> Int {
        return character != nil ? 14 : 0
    }
    
    func tableTitle() -> String {
        return character?.name ?? "No name"
    }
    
}
