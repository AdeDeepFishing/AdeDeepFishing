//
//  ViewController.swift
//  TipCalculator
//
//  Created by YANWEN CHEN on 2021/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipAmountLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 

    @IBAction func CalculateTip(_ sender: Any) {
        
        let bill=Double(BillAmountTextField.text!) ?? 0
        
        let tipPercentages=[0.15,0.18,0.2]
        
        let tip=bill*tipPercentages[TipControl.selectedSegmentIndex]
        
        let total=bill+tip
        
        TipAmountLabel.text=String(format:"$%.2f",tip)
        
        TotalLable.text=String(format:"$%.2f",total)
    }
    
}

