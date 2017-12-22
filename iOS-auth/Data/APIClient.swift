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

class APIClient {
    let baseURL: URL
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
    func getByID(@escaping completion : ()
}
