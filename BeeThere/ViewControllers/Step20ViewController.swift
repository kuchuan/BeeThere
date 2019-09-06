//
//  Step20ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/24.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

class Step20ViewController: UIViewController {
    
    var question = ["なぜ1回目", "なぜ2回目", "なぜ3回目", "なぜ4回目", "なぜ5回目", "なぜ6回目", "なぜ7回目", "なぜ8回目", "なぜ9回目", "なぜ10回目"]
    
    var questionCounter = 1 //TableViewの「なぜ」の数を数える
    
    
    @IBOutlet weak var textFromStep11: UITextView!
    @IBOutlet weak var tableView: UITableView!

    
    var value: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
        textFromStep11.text = value
        
        
    }
    
    @IBAction func didClicktoToStep21(_ sender: UIButton) {
        performSegue(withIdentifier: "toStep21", sender: nil)
    }
    
    

}


extension Step20ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return question.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = question[indexPath.row]
        return cell
    }
    
}



