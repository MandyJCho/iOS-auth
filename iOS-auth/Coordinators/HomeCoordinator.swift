//
//  HomeFlowCoordinator.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/30/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit
import Foundation

protocol HomeViewControllerDelegate {
    func didSelectCharacter() {}
}

class HomeCoordinator: Coordinator {
    init(with navigationController: UINavigationController) {
        super.init(navigationController)
    }
    
    override func start() {
        showHome()
    }
    
    func showHome(){
        let homeViewController = HomeViewController()
        homeViewController.delegate
    }
}
