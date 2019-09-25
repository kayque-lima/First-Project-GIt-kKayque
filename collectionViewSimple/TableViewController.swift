//
//  TableViewController.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 17/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var name:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = name
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "daysIdent", for: indexPath) as! TableViewCell
        let row = indexPath.row
        cell.daysOfWeek.text = days[row]
        return cell
    }

}
