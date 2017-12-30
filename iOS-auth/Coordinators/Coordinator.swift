//
//  Coordinator.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/27/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation
import UIKit

class Coordinator {
    let child: [Coordinator]
    weak var navigationController: UINavigationController?
    
    init(with navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
}