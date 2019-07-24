//
//  Step11ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/24.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

class Step11ViewController: UIViewController {
    
    @IBOutlet weak var inputBox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClickToStep20(_ sender: UIButton) {
        let textValue = inputBox.text
        performSegue(withIdentifier: "toStep20", sender: textValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStep20"{
            let nextVC = segue.destination as! Step20ViewController
            nextVC.value = sender as! String
        }
    }
    

}
