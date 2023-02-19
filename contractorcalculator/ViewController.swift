//
//  ViewController.swift
//  contractorcalculator
//
//  Created by Srivastav, Suraj (S.K.) on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var materialTxt: UITextField!
    @IBOutlet weak var laborTxt: UITextField!
    
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var taxLbl: UILabel!
    @IBOutlet weak var subTotalLbl: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        let laborValue = Double(laborTxt.text!) ?? 0.0
        let materialValue = Double(materialTxt.text!) ?? 0.0
        
        let subTotal = laborValue + materialValue
        let tax = subTotal * 0.05
        let total = subTotal + tax
        
        subTotalLbl.text = "\(subTotal.description)"
        taxLbl.text = "\(tax.description)"
        totalLbl.text = "\(total.description)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

