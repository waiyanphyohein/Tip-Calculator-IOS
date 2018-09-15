//
//  ViewController.swift
//  Tip Calculator
//
//  Created by WaiYanPhyo Hein on 9/14/18.
//  Copyright © 2018 WaiYanPhyo Hein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Initialized")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true);
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipArrayPercentage = [0.15,0.2,0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipArrayPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
}

