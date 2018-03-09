//
//  CharacterViewModel.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation
import UIKit

class CharacterViewModel : NSObject {
    private var character: Character? = nil
    var height : String {
        get {
            if let person = character {
                return "\(Int((person.height * 0.393701) / 12))ft \((Int(person.height * 0.393701) % 12))in"
            } else { return "Unknown height" }
        }
    }

    
    // TODO: Remove network call from "init" and into fetch method
    // DI of client from storyboard
    // MAYBE: Use and rx library
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
