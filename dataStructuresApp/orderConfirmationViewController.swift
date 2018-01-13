//
//  orderConfirmationViewController.swift
//  dataStructuresApp
//
//  Created by Edouard Long on 10/01/2018.
//  Copyright © 2018 Edouard Long. All rights reserved.
//

import UIKit

var customerData = [(name: String, address: String)]()

class orderConfirmationViewController: UIViewController {

    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var customerNameInput: UITextField!
    @IBOutlet weak var customerAddressInput: UITextField!
    
    
    // string that previous view controller will load
    var textString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set text of text field to be the orders list
        textField.text = textString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveCustomerDataPressed(_ sender: Any) {
        
        // create a new customer address tuple with the data from the text entries
        let customerTuple = (name: customerNameInput.text, address: customerAddressInput.text)
        
        // add customer tuple to array of customer data
        customerData.append(customerTuple as! (name: String, address: String))
        
        // use a segue to go back to the main menu
        self.performSegue(withIdentifier: "closeOrder", sender: nil)
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
