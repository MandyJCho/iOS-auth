//
//  APIClient.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit

class APIClient: NSObject {
    
    func get(field: String, done: @escaping ([NSDictionary?]) -> Void) {
        guard let url = URL(string: "\(Endpoints.TMDB.baseURL)/\(field)?api_key=\(Endpoints.TMDB.apikey)") else { print("ERR"); return }
        
        let task = URLSession.shared.dataTask(with: url) {(data, res, err) in
            do {
                if let data = data {
                    if let response = try JSONSerialization.jsonObject(with: data, options: [.allowFragments]) as? NSDictionary {
                        if let results = response.value(forKey: "results") as? [NSDictionary] {
                            done(results)
                        }
                    }
                }
            } catch {
                if let error = err {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
