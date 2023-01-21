//
//  ViewController.swift
//  Slot Machine
//
//  Created by Kaushal on 21/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var betStepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        decorate(stepper: betStepper)
    }
    
    
    
    func decorate(stepper: UIStepper) {
        let colorNormal = UIColor(red: 230/255, green: 179/255, blue: 37/255, alpha: 1.0)
        let colorHighlighted = UIColor(red: 147/255, green: 1/255, blue: 0/255, alpha: 1.0)
        let colorDisabled = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0)
        
        // adjust size to your liking
        let fnt = UIFont.systemFont(ofSize: 32)
        let configuration = UIImage.SymbolConfiguration(font: fnt)
        
        let lArrow = UIImage(systemName: "minus", withConfiguration: configuration)?.withRenderingMode(.alwaysOriginal)
        let leftNormal = lArrow?.withTintColor(colorNormal)
        let leftHighlighted = lArrow?.withTintColor(colorHighlighted)
        let leftDisabled = lArrow?.withTintColor(colorDisabled)

        let rArrow = UIImage(systemName: "plus", withConfiguration: configuration)?.withRenderingMode(.alwaysOriginal)
        let rightNormal = rArrow?.withTintColor(colorNormal)
        let rightHighlighted = rArrow?.withTintColor(colorHighlighted)
        let rightDisabled = rArrow?.withTintColor(colorDisabled)
        let blank = UIImage()
        
        stepper.setDecrementImage(leftNormal, for: .normal)
        stepper.setDecrementImage(leftHighlighted, for: .highlighted)
        stepper.setDecrementImage(leftDisabled, for: .disabled)

        stepper.setIncrementImage(rightNormal, for: .normal)
        stepper.setIncrementImage(rightHighlighted, for: .highlighted)
        stepper.setIncrementImage(rightDisabled, for: .disabled)
        
        stepper.setBackgroundImage(blank, for: .normal)
        stepper.setDividerImage(blank, forLeftSegmentState: .normal, rightSegmentState: .normal)

    }
}
