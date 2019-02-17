//
//  ItemViewController.swift
//  reSEEt
//
//  Created by Hiun Shim on 2/16/19.
//  Copyright © 2019 Caleb Kuo. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var switch1: UISwitch!
    @IBAction func toggleSwitch1(_ sender: Any) {
        if switch1.isOn {
            switch1.isOn = false
        }
        switch1.isOn = true
    }
    @IBOutlet weak var switch2: UISwitch!
    @IBAction func toggleSwitch2(_ sender: Any) {
        if switch2.isOn {
            switch2.isOn = false
        }
        switch2.isOn = true
    }
    
    @IBOutlet weak var switch3: UISwitch!
    @IBAction func toggleSwitch3(_ sender: Any) {
        if switch3.isOn {
            switch3.isOn = false
        }
        switch3.isOn = true
    }
    
    @IBOutlet weak var switch4: UISwitch!
    @IBAction func toggleSwitch4(_ sender: Any) {
        if switch4.isOn {
            switch4.isOn = false
        }
        switch4.isOn = true
    }
    
    
//  @IBAction func mainButton(sender: UIButton) {
//        if (switch1.isOn) {
//            if (sender.category == 1) {
//                sender.category = self.category.filter {$0 != 1}
//            } else {
//                sender.category.append(1)
//            }
//        return
//        }
//
//        if (switch2.isOn) {
//            if (sender.category == 1) {
//                sender.category = self.category.filter {$0 != 2}
//            } else {
//                sender.category.append(2)
//            }
//        return
//        }
//
//        if (switch3.isOn) {
//            if (sender.category == 1) {
//                sender.category = self.category.filter {$0 != 3}
//            } else {
//                sender.category.append(3)
//            }
//        return
//        }
//
//        if (switch4.isOn) {
//            if (sender.category == 1) {
//                sender.category = self.category.filter {$0 != 4}
//            } else {
//                sender.category.append(4)
//            }
//        return
//        }
//    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
