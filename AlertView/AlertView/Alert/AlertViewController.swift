//
//  AlertViewController.swift
//  AlertView
//
//  Created by 김건우 on 11/3/23.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveName(_ sender: UIButton) {
        var text = nameText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        if text == "" {
            showAlert()
        } else {
            nameText.text = ""
            print("Value stored: \(text)")
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Error", message: "Insert your name in the field", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { action in
            self.nameText.backgroundColor = UIColor(red: 255.0 / 255.0, green: 230.0 / 255.0, blue: 230.0 / 255.0, alpha: 1.0)
        }
        alert.addAction(action)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        
        present(alert, animated: true)
    }
}
