//
//  RootViewController.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/26/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    weak var delegate: HomeVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onViewCharacter(_ sender: Any) {
        delegate?.showCharacterTable()
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

