//
//  ContactDetailTableViewCell.swift
//  ContactApp2
//
//  Created by Danil Gerasimov on 02.07.2021.
//

import UIKit

class ContactDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameOfCellLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(nameOfCell: String, data: String) {
        nameOfCellLabel.text = nameOfCell
        dataLabel.text = data
        
    }

}
