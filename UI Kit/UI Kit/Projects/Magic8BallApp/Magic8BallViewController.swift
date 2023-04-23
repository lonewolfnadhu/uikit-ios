//
//  Magic8BallViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 23/04/2023.
//

import UIKit

class Magic8BallViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func askButtonAction(_ sender: UIButton) {
        let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
        imageView.image = ballArray.randomElement()
    }
}
