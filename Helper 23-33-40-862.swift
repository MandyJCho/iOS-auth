//
//  Helper.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/17/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation

func findENV(key: String) -> String{
    guard let path = Bundle.main.path(forResource: "env", ofType: "plist") else {
        print("File not found in bundle")
        // fatalError()
    }
    
    let envvar = NSDictionary(contentsOfFile: path)
    
    for(key, value) in (envvar?.enumerated())! {
        print("\(key) \(value)")
    }
    
    return key
    // return envvar[key]
}

