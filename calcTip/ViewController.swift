//
//  ViewController.swift
//  calcTip
//
//  Created by Ismail Mussed on 10/9/19.
//  Copyright © 2019 Ismail Mussed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calcuateTip(_ sender: Any) {
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // calcualte the tip and total
        let tip = bill * 0.1
        let total = bill + tip
        // update the tip and total labels
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    }
}

