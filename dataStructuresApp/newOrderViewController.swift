//
//  newOrderViewController.swift
//  dataStructuresApp
//
//  Created by Edouard Long on 10/01/2018.
//  Copyright © 2018 Edouard Long. All rights reserved.
//

import UIKit

class newOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var orders = [[Int]]()
    
    // reference table view
    @IBOutlet weak var tableView: UITableView!
    
    
    // collection of all of the uisegmented controls
    @IBOutlet var computerOptions: [UISegmentedControl]!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // check if there are any orders and if so return the no of orders
        if orders.count == 0 {
            return 1
        }
        else {
            return orders.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // get our custom cell
        let cellToInsert:addOrderTableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! addOrderTableViewCell
        
        // check if there are any orders and if so return those orders
        if orders.count == 0 {
            
            cellToInsert.mainLabel.text = "No orders yet!"
            return cellToInsert
        }
        else {
            
            cellToInsert.mainLabel.text = "Order \(indexPath.row) - \(String(describing: orders[indexPath.row]))"
            return cellToInsert
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveOrderPressed(_ sender: Any) {
    }
    
    @IBAction func addComputerPressed(_ sender: Any) {
        
        // prepare array that holds the customer's order
        var computerOrder = [Int]()
        
        for control in computerOptions {
            
            computerOrder.append(control.selectedSegmentIndex)
        }
        
        // add this to the main orders array
        self.orders.append(computerOrder)
        
        // reload table view
        self.tableView.reloadData()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
