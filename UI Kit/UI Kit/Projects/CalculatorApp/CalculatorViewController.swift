//
//  CalculatorViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 23/04/2023.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let value: String = sender.titleLabel?.text ?? "0"
        print("Button Tap: \(value)")
    }
}
