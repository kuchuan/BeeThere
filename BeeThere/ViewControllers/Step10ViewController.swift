//
//  Step10ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/24.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

class Step10ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClickToNews(_ sender: UIButton) {
        performSegue(withIdentifier: "toStep11", sender: nil)
    }
    
    
}
