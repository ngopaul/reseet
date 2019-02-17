//
//  ItemViewController.swift
//  reSEEt
//
//  Created by Caleb Kuo on 2/16/19.
//  Copyright © 2019 Caleb Kuo. All rights reserved.
//

import Foundation
import UIKit

var switches = [true, true, true, true]

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
        // cell.category.category = item.category
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicked on!")
        print(indexPath.row)
        print([switches[0], switches[1], switches[2], switches[3]])
        items[indexPath.row].category.update()
//        items[indexPath.row].cost += "."
//        print(items[indexPath.row].cost)
        self.tableView.beginUpdates()
        self.tableView.endUpdates()
    }
    
    @IBOutlet weak var red: UISwitch!
    @IBAction func toggle_red(_ sender: Any) {
        if (red.isOn) {
            red.isOn = false
            switches[0] = false
        } else {
            red.isOn = true
            switches[0] = true
        }
        red.setOn(red.isOn, animated: true)
    }
    @IBOutlet weak var blue: UISwitch!
    @IBAction func toggle_blue(_ sender: Any) {
        if (blue.isOn) {
            blue.isOn = false
            switches[1] = false
        } else {
            switches[1] = true
            blue.isOn = true
        }
        blue.setOn(blue.isOn, animated: true)
    }
    @IBOutlet weak var green: UISwitch!
    @IBAction func toggle_green(_ sender: Any) {
        if (green.isOn) {
            green.isOn = false
            switches[2] = false
        } else {
            switches[2] = true
            green.isOn = true
        }
        green.setOn(green.isOn, animated: true)
    }
    @IBOutlet weak var yellow: UISwitch!
    @IBAction func toggle_yellow(_ sender: Any) {
        if (yellow.isOn) {
            yellow.isOn = false
            switches[3] = false
        } else {
            switches[3] = true
            yellow.isOn = true
        }
        yellow.setOn(yellow.isOn, animated: true)
    }
    
    
}
