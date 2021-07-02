//
//  ContactTableViewCell.swift
//  ContactApp2
//
//  Created by Danil Gerasimov on 01.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactPhoneNumberLabel: UILabel!
    @IBOutlet weak var contactImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(contact: ContactCellData) {
        contactImage.image =  contact.contactImage
        contactNameLabel.text = "\(contact.contactFirstName)  \(contact.contactLastName)"
        contactPhoneNumberLabel.text = contact.contactPhoneNumber
    }

}
