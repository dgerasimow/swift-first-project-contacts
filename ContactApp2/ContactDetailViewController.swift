//
//  ContactDetailViewController.swift
//  ContactApp2
//
//  Created by Danil Gerasimov on 02.07.2021.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var contact: ContactCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = contact?.contactImage
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension ContactDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        45
    }
}

extension ContactDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactDetailTableViewCell", for: indexPath) as? ContactDetailTableViewCell else { return UITableViewCell() }
        switch indexPath.row {
        case 0:
            cell.setData(nameOfCell: "First name", data: contact!.contactFirstName)
        case 1:
            cell.setData(nameOfCell: "Last name", data: contact!.contactLastName)
        case 2:
            cell.setData(nameOfCell: "Phone number", data: contact!.contactPhoneNumber)
        case 3:
            cell.setData(nameOfCell: "E-mail", data: contact!.contactEmail)
        case 4:
            cell.setData(nameOfCell: "Place of work", data: contact!.contactPlaceOfWork)
        case 5:
            cell.setData(nameOfCell: "Mark", data: contact!.contactMark)
        default:
            cell.setData(nameOfCell: "?", data: "?")
        }
        return cell
    }
}
