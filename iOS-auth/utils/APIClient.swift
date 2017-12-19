//
//  APIClient.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit

class APIClient: NSObject {
    
    func fetch(field: String) {
        guard let url = URL("\(Endpoints.TMDB.baseURL)/\(field)?api_key=\(Endpoints.TMDB.apikey)") else { return }
        
        do {
            
        }
        
    }
}
