//
//  orderConfirmationViewController.swift
//  dataStructuresApp
//
//  Created by Edouard Long on 10/01/2018.
//  Copyright © 2018 Edouard Long. All rights reserved.
//

import UIKit

class orderConfirmationViewController: UIViewController {

    @IBOutlet weak var textField: UITextView!
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
