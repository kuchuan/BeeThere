//
//  Step20ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/24.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

class Step20ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var question = ["なぜなぜ1回目", "なぜなぜ2回目", "なぜなぜ3回目", "なぜなぜ4回目", "なぜなぜ5回目", "なぜなぜ6回目", "なぜなぜ7回目", "なぜなぜ8回目"]
    
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return question.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = question[indexPath.row]
        return cell
    }
    

}



