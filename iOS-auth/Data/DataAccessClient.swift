//
//  DataAccessLayer.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/20/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

enum ErrorCode {
    case invalid
    case failed
    case unknown
}

class DataAccessClient {
    let baseURL: URL
    
    init() {
        baseURL = URL(Endpoints.PokeAPI.baseURL)
    }
    
    func getThatPokemon(id: Int, completion: @escaping (Pokemon, ))
}
