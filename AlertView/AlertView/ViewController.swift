//
//  ViewController.swift
//  AlertView
//
//  Created by 김건우 on 10/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!

    @IBAction func saveName(_ sender: UIButton) {
        var text = nameText.text!
        text = text.trimmingCharacters(in: .whitespaces)
        if text == "" {
            showAlert()
        } else {
            print("Value stored: \(text)")
            nameText.text = ""
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
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginUser(_ sender: UIButton) {
        let alert = UIAlertController(title: "Insert Email and Password", message: nil, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancel)
        
        let action = UIAlertAction(title: "Login", style: .default) { action in
            if let fields = alert.textFields {
                let email = fields[0].text
                let password = fields[1].text
                
                if email == "rlarjsdn3" && password == "12345" {
                    self.performSegue(withIdentifier: "showMainScreem", sender: self)
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
    
    @IBAction func openSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Emails", message: "What do you want to do with the message?", preferredStyle: .actionSheet)
        
        // ⭐️ 아이패드에서는 액션 시트가 아닌 팝오버 형태로 알림창을 띄워야 에러가 안남!
        if let popover = alert.popoverPresentationController {
            // ⭐️ 팝오버의 윈도우를 어느 뷰에 고정시킬 지 (기준) 설정
            popover.sourceView = sender
            // ⭐️ 팝오버의 화살표를 어느 위치에 고정시킬 지 결정
            popover.sourceRect = sender.bounds
//            popover.sourceRect = CGRect(x: 0, y: 0, width: sender.bounds.width, height: sender.bounds.height + 10)
//            popover.sourceRect = CGRect(x: 0, y: 0, width: 402, height: 17)
            // 팝오버의 화살표가 어디로 항하게 할 지 결정
            popover.permittedArrowDirections = [.up]
        }
        
        let action1 = UIAlertAction(title: "Move to Inbox", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction([action1, action2, cancel])
        
        present(alert, animated: true)
    }
    
}

