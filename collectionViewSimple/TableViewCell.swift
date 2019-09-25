//
//  TableViewCell.swift
//  collectionViewSimple
//
//  Created by Aluno Mack on 17/09/2019.
//  Copyright © 2019 Leo Mosca. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var daysOfWeek: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
