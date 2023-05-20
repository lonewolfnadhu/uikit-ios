//
//  CustomTableViewVC.swift
//  UI Kit
//
//  Created by Nadir Shah on 07/05/2023.
//

import UIKit

class CustomTableViewVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "ReusableCell"
    let cellNibName = "BioCell"
    
    var customCell:[CustomCell] = [
        CustomCell(name: "CM Punk", bio: "Phillip Jack Brooks, better known by the ring name CM Punk, is an American professional wrestler, sports commentator, actor, and retired mixed martial artist currently signed to All Elite Wrestling."),
        CustomCell(name: "Randy Ortan", bio: "Randal Keith Orton is an American professional wrestler and actor. He is currently signed to WWE, where he performs on the Raw brand, but is currently out of action due to a back injury."),
        CustomCell(name: "Roman Reigns", bio: "Leati Joseph 'Joe' Anoaʻi, better known by the ring name Roman Reigns, is an American professional wrestler and former American football player."),
        CustomCell(name: "Seith Rollings", bio: "Colby Daniel Lopez is an American professional wrestler. He is currently signed to WWE, where he performs on the Raw brand under the ring name Seth 'Freakin' Rollins or simply Seth Rollins. He is credited for his in-ring ability and aptness of reinventing his on-screen character.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
}

extension CustomTableViewVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BioCell
        cell.nameLabel.text = customCell[indexPath.row].name
        cell.bioLabel.text = customCell[indexPath.row].bio
        return cell
    }
}
