//
//  ViewController.swift
//  CalculatorBrain
//
//  Created by Alumne on 25/02/2019.
//  Copyright © 2019 Alumne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let calculatorlogic = CalculatorBrain()


    @IBOutlet weak var ResultLabel: UILabel!
    
    
    @IBAction func actionPerfomed(_ button: UIButton) {
        switch button.tag {
        case 0...9:
            calculatorlogic.setNumber(button.tag)
            ResultLabel.text = String(calculatorlogic.getDisplay())
        case 10...17:
            calculatorlogic.setOperation((button.tag%10 + 1))
            
        case 18:
            calculatorlogic.reset()
            ResultLabel.text = String(calculatorlogic.getDisplay())
            
        case 19:
            calculatorlogic.result()
            ResultLabel.text = String(calculatorlogic.getDisplay())
        default:
            break
        }
    }
}

