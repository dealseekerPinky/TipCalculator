//
//  ViewController.swift
//  TipCalculator
//
//  Created by Pinky Kohsuwan on 1/20/18.
//  Copyright © 2018 Pinky Kohsuwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPicker: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculatingTip(_ sender: Any) {
        let tipPercentages = [0.15,0.18,0.20,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPicker.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

