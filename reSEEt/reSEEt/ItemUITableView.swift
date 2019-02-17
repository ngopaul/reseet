////
////  ItemTableViewController.swift
////  reSEEt
////
////  Created by Caleb Kuo on 2/16/19.
////  Copyright © 2019 Caleb Kuo. All rights reserved.
////
//
//import UIKit
//
//class ItemUITableView: UITableView {
//    
//    //MARK: Properties
//    
//    var items = [Item]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Load the sample data.
//        loadSampleItems()
//    }
//    
//    // MARK: - Table view data source
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//    
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cellIdentifier = "ItemTableViewCell"
//        
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ItemTableViewCell else {
//            fatalError("The dequeued cell is not an instance of ItemTableViewCell.")
//        }
//        // Configure the cell...
//        
//        let item = items[indexPath.row]
//        
//        cell.id.text = item.id
//        cell.name.text = item.name
//        cell.cost.text = item.cost
//        cell.category.category = item.category
//        
//        return cell
//    }
//    
//    
//    /*
//     // Override to support conditional editing of the table view.
//     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//     // Return false if you do not want the specified item to be editable.
//     return true
//     }
//     */
//    
//    /*
//     // Override to support editing the table view.
//     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//     if editingStyle == .delete {
//     // Delete the row from the data source
//     tableView.deleteRows(at: [indexPath], with: .fade)
//     } else if editingStyle == .insert {
//     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//     }
//     }
//     */
//    
//    /*
//     // Override to support rearranging the table view.
//     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//     
//     }
//     */
//    
//    /*
//     // Override to support conditional rearranging of the table view.
//     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//     // Return false if you do not want the item to be re-orderable.
//     return true
//     }
//     */
//    
//    /*
//     // MARK: - Navigation
//     
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destination.
//     // Pass the selected object to the new view controller.
//     }
//     */
//    
//    //MARK: Private Methods
//    
//    //    override func viewDidAppear(_ animated: Bool) {
//    //        loadSampleItems()
//    //    }
//    
//    private func loadSampleItems() {
//        let item1 = Item(id: "1", name: "item1", cost: "0")
//        items += [item1]
//        //        items += all_items
//    }
//    
//}
