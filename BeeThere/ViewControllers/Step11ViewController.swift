//
//  Step11ViewController.swift
//  BeeThere
//
//  Created by 堀川浩二 on 2019/07/24.
//  Copyright © 2019 堀川浩二. All rights reserved.
//

import UIKit

class Step11ViewController: UIViewController {
    
    var parser: XMLParser!
    var items = [Item]()
    var item:Item?
    var currentString = ""
    
    @IBOutlet weak var inputBox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startDownload()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didClickToStep20(_ sender: UIButton) {
        let textValue = inputBox.text
        performSegue(withIdentifier: "toStep20", sender: textValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toStep20" {
            let nextVC = segue.destination as! Step20ViewController
            nextVC.value = sender as! String
        }
    }
    
    func startDownload() {
        self.items = []
        if let url = URL(
            string: "https://b.hatena.ne.jp/hotentry/general") {
                if let parser = XMLParser(contentsOf: url){
                    self.parser = parser
                    self.parser.delegate  = self
                    self.parser.parse()
                }
                
        }
    }
    
    func parser(_ parser: XMLParser,
                didStartElement elementName: String,
                namespaceURI: String?,
                qualifideName qName: String?,
                attributes attributDict: [String : String]) {
        self.currentString = ""
        if elementName == "item" {
            self.item = Item()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharactors string: String){
        self.currentString += string
    }
    
    func parser(_ parser: XMLParser, didEndElement: elementName: String,
            namespaceURI: String?,
            qualifiedName qName: String?) {
        switch elementName {
        case "title": self.item?.title = currentString
        case "link": self.item?.link = currentString
        case "item": self.items.append(self.item!)
        default: break
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser){
        
        self.tableview.reloadData()
    }
    
    
    

}
