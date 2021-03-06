//
//  File.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

struct Endpoints {
    struct TMDB {
        static let baseURL = "https://api.themoviedb.org/3/movie"
        static let apikey = findENVVAR(key: "TMDB_APIKEY")
    }
    
    struct SWAPI {
        static let baseURL = "http https://swapi.co/api/people/"
        private static let MAX = 82
        static var id: Int {
            get {
                return Int(arc4random_uniform(UInt32(MAX)))
            }
        }
    }
    
}
