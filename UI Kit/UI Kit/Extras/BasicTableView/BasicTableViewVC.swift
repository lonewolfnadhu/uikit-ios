//
//  BasicTableViewVC.swift
//  UI Kit
//
//  Created by Nadir Shah on 07/05/2023.
//

import UIKit

class BasicTableViewVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "ReusableCell"
    
    var messageCell:[MessageCell] = [
        MessageCell(name: "CM Punk"),
        MessageCell(name: "Randy Ortan"),
        MessageCell(name: "Roman Reigns"),
        MessageCell(name: "Seith Rollins")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}

extension BasicTableViewVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = messageCell[indexPath.row].name
        return cell
    }
}
