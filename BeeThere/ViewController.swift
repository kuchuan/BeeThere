//
//  ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/23.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

//@IBDesignable

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didClickToStep10(_ sender: UIButton) {
        performSegue(withIdentifier: "toStep10", sender: nil)
    }
    

}

