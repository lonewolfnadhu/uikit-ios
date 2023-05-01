//
//  TableSampleViewController.swift
//  UI Kit
//
//  Created by Nadir Shah on 01/05/2023.
//

import UIKit

class TableSampleViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableSampleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        cell.backgroundColor = rainbow[indexPath.item]
        return cell
    }
    
}

extension TableSampleViewController: UITableViewDelegate {
    
}
