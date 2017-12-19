//
//  Helper.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/19/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation


func findENVVAR(key: String) -> String {
    guard let path = Bundle.main.path(forResource: "env", ofType: "plist") else { return "" }

    
    let envvars = NSDictionary(contentsOfFile: path)
    
    return envvars?.value(forKey: key) as! String
}
