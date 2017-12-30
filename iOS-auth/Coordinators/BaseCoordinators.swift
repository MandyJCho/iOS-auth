//
//  AppCoordinator.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/29/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var doSkipHome = false
    
    override func start() {
        let coordinator = doSkipHome ? HomeCoordinator() : CharacterTableCoordinator()
        coordinator.start()
        children.append(coordinator)
    }
    
}

class HomeCoordinator : Coordinator {
    override func start() {
        let viewcontroller = HomeViewController()
        super.start(viewcontroller)
    }
}

class CharacterTableCoordinator : Coordinator {
    override func start() {
        let viewcontroller = CharacterViewController()
        super.start(viewcontroller)
    }
}
