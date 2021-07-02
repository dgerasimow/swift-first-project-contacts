//
//  ViewController.swift
//  ContactApp2
//
//  Created by Danil Gerasimov on 01.07.2021.
//

import UIKit

class ViewController: UIViewController {
    var data: [ContactCellData] = [ContactCellData(contactFirstName: "Artem",
                                                   contactLastName: "Kalugin",
                                                   contactPhoneNumber: "89173492344",
                                                   contactPlaceOfWork: "KFU, ITIS",
                                                   contactEmail: "artemkaluga@gmail.com",
                                                   contactMark: "Cocksucker",
                                                   contactImage: UIImage(systemName: "person.fill") ?? UIImage()),
                                   ContactCellData(contactFirstName: "Alexander",
                                                   contactLastName: "Kuznetsov",
                                                   contactPhoneNumber: "89178887777",
                                                   contactPlaceOfWork: "None",
                                                   contactEmail: "killingbomjes@gmail.com",
                                                   contactMark: "Bomjs killer",
                                                   contactImage: UIImage(systemName: "person.fill") ?? UIImage())]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactDetailViewController = storyboard?.instantiateViewController(identifier: "ContactDetailViewController") as? ContactDetailViewController else { return }
        contactDetailViewController.contact = data[indexPath.row]
        
        present(contactDetailViewController, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell else { return UITableViewCell() }
        cell.setData(contact: data[indexPath.row])
        return cell
    }
    
    
}

struct ContactCellData {
    let contactFirstName: String
    let contactLastName: String
    let contactPhoneNumber: String
    let contactPlaceOfWork: String
    let contactEmail: String
    let contactMark: String
    let contactImage: UIImage?
    
}

