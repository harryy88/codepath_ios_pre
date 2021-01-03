//
//  ViewController.swift
//  codepath-prereq
//
//  Created by Harrison Groll on 1/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.2]
        
        let tipIndex = tipController.selectedSegmentIndex
        
        let tip = bill * tipPercentage[tipIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
                
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

