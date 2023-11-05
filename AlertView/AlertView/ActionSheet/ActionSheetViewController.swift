//
//  ActionSheetViewController.swift
//  AlertView
//
//  Created by 김건우 on 11/3/23.
//

import UIKit

class ActionSheetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Emails", message: "What do you want to do with the message?", preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "Move to Inbox", style: .default, handler: nil)
        alert.addAction(action1)
        let action2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(action2)
        let action3 = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        alert.addAction(action3)
        
        present(alert, animated: true, completion: nil)
    }
    
}
