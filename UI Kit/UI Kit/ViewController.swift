//
//  ViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 23/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var iamrichpoorView: UIView!
    @IBOutlet weak var diceeView: UIView!
    @IBOutlet weak var magic8ballView: UIView!
    @IBOutlet weak var calculatorView: UIView!
    @IBOutlet weak var xylophoneView: UIView!
    @IBOutlet weak var bmiCalculatorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI(){
        iamrichpoorView.tag = 1
        diceeView.tag = 2
        magic8ballView.tag = 3
        calculatorView.tag = 4
        xylophoneView.tag = 5
        bmiCalculatorView.tag = 6
        
        iamrichpoorView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        iamrichpoorView.isUserInteractionEnabled = true
        
        diceeView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        diceeView.isUserInteractionEnabled = true
        
        magic8ballView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        magic8ballView.isUserInteractionEnabled = true
        
        calculatorView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        calculatorView.isUserInteractionEnabled = true
        
        xylophoneView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        xylophoneView.isUserInteractionEnabled = true
        
        bmiCalculatorView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        bmiCalculatorView.isUserInteractionEnabled = true
    }
    
    @objc func tap(_ gestureRecognizer: UITapGestureRecognizer) {
        let tag = gestureRecognizer.view?.tag
        switch tag! {
        case 1 :
            print("select first view")
            self.performSegue(withIdentifier: "goToIAmRichPoor", sender: self)
        case 2 :
            print("select second view")
            self.performSegue(withIdentifier: "goToDicee", sender: self)
        case 3 :
            print("select third view")
            self.performSegue(withIdentifier: "goToMagic8Ball", sender: self)
        case 4 :
            print("select four view")
            self.performSegue(withIdentifier: "goToCalculator", sender: self)
        case 5 :
            print("select five view")
            self.performSegue(withIdentifier: "goToXylophone", sender: self)
        case 6 :
            print("select six view")
            self.performSegue(withIdentifier: "goToBMICalculator", sender: self)
        default:
            print("default")
        }
    }
}
