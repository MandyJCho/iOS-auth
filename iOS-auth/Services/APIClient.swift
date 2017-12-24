//
//  APIClient.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit

enum AccessError {
    case URLNotFound(msg: String)
    case RequestFailure(msg: String)
    case
}

class APIClient: NSObject {
    typealias SWAPI = Endpoints.SWAPI
    
    func getRandomCharacter(@escaping completion: (Character, AccessError) -> Void) {
        // Validate endpoint URL
        let endpoint = SWAPI.baseURL + SWAPI.id
        guard let url = URL(string: endpoint)
            else {
                completion(_, AccessError.URLNotFound(msg: "Invalide URL: \(endpoint)"))
                return
            }
        
        // Create and run request
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                if let responseJSON = try JSONDecoder.decode(Character.self, from: data) {
                    completion(responseJSON, _))
                }
            } catch {
                if error == nil {
                    completion(_, AccessError.RequestFailure(msg: "Error: \(error)")
                }
            }
        }
    }
}
