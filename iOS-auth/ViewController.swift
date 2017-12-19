//
//  ViewController.swift
//  iOS-auth
//
//  Created by Mandy Cho on 12/16/17.
//  Copyright © 2017 Canvas. All rights reserved.
//

import UIKit

//TODO: Incognito
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(findENVVAR(key: "POOL_ID"))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

