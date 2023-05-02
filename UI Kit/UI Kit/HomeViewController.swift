//
//  HomeViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 02/05/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.layer.cornerRadius = 30
    }
}
