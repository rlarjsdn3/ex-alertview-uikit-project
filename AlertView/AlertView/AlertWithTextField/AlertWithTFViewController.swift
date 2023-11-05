//
//  AlertWithTFViewController.swift
//  AlertView
//
//  Created by 김건우 on 11/3/23.
//

import UIKit

class AlertWithTFViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginUser(_ sender: UIButton) {
        let alert = UIAlertController(title: "Insert Email and Password", message: nil, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        
        let action = UIAlertAction(title: "Login", style: .default) { action in
            if let fields = alert.textFields {
                let email = fields[0].text
                let password = fields[1].text
                
                if email == "test@naver.com" && password == "12345" {
                    self.performSegue(withIdentifier: "goToMain", sender: self)
                }
            }
        }
        alert.addAction(action)
        
        alert.addTextField { textField in
            textField.placeholder = "Email"
        }
        alert.addTextField { textField in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        }
        
        present(alert, animated: true, completion: nil)
    }
    
}
