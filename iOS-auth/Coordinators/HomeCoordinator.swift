//
//  HomeFlowCoordinator.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/30/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit
import Foundation

protocol HomeVCDelegate:class {
    func showCharacterTable()
}

protocol CharacterTableVCDelegate:class {
    
}

class HomeCoordinator: Coordinator {
    init(with navigationController: UINavigationController) {
        super.init(with: navigationController)
    }
    
    override func start() {
        showHome()
    }
    
    func showHome() {
        let homeViewController = HomeViewController()
        homeViewController.delegate = self
        navigationController?.pushViewController(homeViewController, animated: true)
    }
}

extension HomeCoordinator: HomeVCDelegate {
    func showCharacterTable() {
        let characterViewModel = CharacterViewModel(client: DataAccessClient())
        let characterTableViewController = CharacterTableViewController(viewModel: characterViewModel)
        characterTableViewController.delegate = self
        navigationController?.pushViewController(characterTableViewController, animated: true)
    }
}

extension HomeCoordinator: CharacterTableVCDelegate {
    
}
