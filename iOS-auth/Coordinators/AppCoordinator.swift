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
    override func start() {
        let coordinator = HomeCoordinator(with: navigationController)
        coordinator.delegate = self
        coordinator.start()
        children.append(coordinator)
    }
}

class HomeCoordinator : Coordinator {
    weak var delegate: HomeCoordinatorDelegate
    override func start() {
        let viewcontroller = HomeViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
}

