//
//  ViewController.swift
//  Discount It
//
//  Created by Oscar Leon on 3/3/19.
//  Copyright © 2019 Oscar Leon. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var percentageButton: UIButton!
    @IBOutlet weak var amountButton: UIButton!
    
    var percentage = ""
    var amount = ""
    var isPercentageSelected = true
    var isAmountSelected = false
    var canClear = true
    var isOff = true
    var isOf = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
    }
    
    
    @IBAction func percentageOrAmount(_ sender: UIButton) {
        
        switch sender {
        case percentageButton:
            isPercentageSelected = true
            isAmountSelected = false
            return
            
        case amountButton:
            isAmountSelected = true
            isPercentageSelected = false
            return
            
        default:
            print("no button selected")
            return
        }
        
    }
    

    @IBAction func ofOrOff(_ sender: UISwitch) {
    }
    

}

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

extension UIButton {
    
    func moveTitle(horizontal hOffset: CGFloat, vertical vOffset: CGFloat) {
        self.titleEdgeInsets.left += hOffset
        self.titleEdgeInsets.top += vOffset
    }
    
}



