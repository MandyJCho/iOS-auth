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
    
    struct PokeAPI {
        static let baseURl = "https://pokeapi.co/api/v2/pokemon/"
    }
}
