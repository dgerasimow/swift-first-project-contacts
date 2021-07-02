//
//  AuthViewController.swift
//  ContactApp2
//
//  Created by Danil Gerasimov on 02.07.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    let correctLogin: String = "admin"
    let correctPassword: String = "admin"

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var incorrectUserDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func enterButton(_ sender: Any) {
        guard let contactsViewController = storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else { return }
        if loginTextField.text != correctLogin || passwordTextField.text != correctPassword {
            incorrectUserDataLabel.textColor = UIColor.red
        }
        if loginTextField.text == correctLogin && passwordTextField.text == correctPassword{
            navigationController?.setNavigationBarHidden(false, animated: true)
            navigationController?.viewControllers = [contactsViewController]
//            navigationController?.pushViewController(contactsViewController, animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
