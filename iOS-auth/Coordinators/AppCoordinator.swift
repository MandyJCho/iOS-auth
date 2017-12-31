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
    init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
    }
    
    override func start() {
        showHome()
    }
    
    func showHome(){
        let coordinator = HomeCoordinator(with: navigationController!)
        coordinator.start()
        children.append(coordinator)
    }
}
