//
//  consigmentsTableViewController.swift
//  dataStructuresApp
//
//  Created by Edouard Long on 13/01/2018.
//  Copyright © 2018 Edouard Long. All rights reserved.
//

import UIKit

class consigmentsTableViewController: UITableViewController {
    
    
    var partNames:[String:[String]] = ["processor": ["p3", "p5", "p7"], "ram": ["16GB", "32GB"], "storage": ["1TB", "2TB"], "screen": ["19'", "23'"], "case": ["Mini","Midi"], "ports": ["2","4"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if totalOrder.count == 0 {
            return 1
        }
        else {
            return totalOrder.count
        }
    
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "consignmentCell", for: indexPath) as! consignmentsTableViewCell

        if totalOrder.count == 0 {
            cell.mainTextBlock.text = "No consignments yet!"
        }
        else {
            
            // add customers name
            var stringToAdd = "Customer: \(customerData[indexPath.row].name) -"
            
            // for each order the customer has, add it to the label
            var counter = 0
            for order in totalOrder[indexPath.row] {
                
                // format the label
                stringToAdd += " Order \(counter + 1): processor \(partNames["processor"]![order[indexPath.row]]), RAM \(partNames["ram"]![order[indexPath.row]]), Storage \(partNames["storage"]![order[indexPath.row]]), Screen \(partNames["screen"]![order[indexPath.row]]), Case \(partNames["case"]![order[indexPath.row]]), USB Ports \(partNames["ports"]![order[indexPath.row]])"
                
                counter += 1
            }
            
            cell.mainTextBlock.text = stringToAdd
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
