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
    case DataError(msg: String)
}

class DataAccessClient: NSObject {
    typealias SWAPI = Endpoints.SWAPI
    
    func getRandomCharacter(completion: @escaping (Character?, AccessError?) -> Void) {
        // Validate endpoint URL
        let endpoint = SWAPI.baseURL + SWAPI.id.description
        guard let url = URL(string: endpoint)
        else {
            completion(nil, AccessError.URLNotFound(msg: "Invalide URL: \(endpoint)"))
            return
        }
        
        // Create and run request
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                if let json = data {
                    let responseJSON = try JSONDecoder().decode(Character.self, from: json)
                    completion(responseJSON, nil)
                }
            } catch {
                completion(nil, AccessError.RequestFailure(msg: "Error: \(error)"))
            }
        }
        
        task.resume()
    }
}
