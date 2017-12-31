//
//  HomeFlowCoordinator.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/30/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit
import Foundation

protocol HomeViewControllerDelegate:class {
    func showCharacterTable()
}

class HomeCoordinator: Coordinator {
    init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
    }
    
    override func start() {
        showHome()
    }
    
    func showHome() {
        let homeViewController = HomeViewController(nibName: "Home", bundle: nil)
        homeViewController.delegate = self
        navigationController?.pushViewController(homeViewController, animated: true)
    }
}

extension HomeCoordinator: HomeViewControllerDelegate {
    func showCharacterTable() {
        print("delegate here")
    }
}
