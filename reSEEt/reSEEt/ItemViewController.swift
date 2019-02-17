//
//  ItemViewController.swift
//  reSEEt
//
//  Created by Caleb Kuo on 2/16/19.
//  Copyright © 2019 Caleb Kuo. All rights reserved.
//

import Foundation
import UIKit

var red : UISwitch
var green : UISwitch
var blue : UISwitch
var yellow : UISwitch

class ItemViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
//        let item1 = Item(id: "1", name: "item1", cost: "0")
//        let item2 = Item(id: "2", name: "item2", cost: "0")
//        let item3 = Item(id: "3", name: "item3", cost: "0")
//
//        items += [item1, item2, item3]
        items += all_items
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cellId"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! ItemTableViewCell
        // Configure the cell...
        
        let item = items[indexPath.row]
        
        cell.id.text = item.id
        cell.name.text = item.name
        cell.cost.text = item.cost
        cell.category.category = item.category
        
        return cell
    }
    
    @IBOutlet weak var red: UISwitch!
    @IBAction func toggle_red(_ sender: Any) {
        red.setOn(!red.isOn, animated: true)
    }
    @IBOutlet weak var blue: UISwitch!
    @IBAction func toggle_blue(_ sender: Any) {
        blue.setOn(!blue.isOn, animated: true)
    }
    @IBOutlet weak var green: UISwitch!
    @IBAction func toggle_green(_ sender: Any) {
        green.setOn(!green.isOn, animated: true)
    }
    @IBOutlet weak var yellow: UISwitch!
    @IBAction func toggle_yellow(_ sender: Any) {
        yellow.setOn(!yellow.isOn, animated: true)
    }
    
    
}
