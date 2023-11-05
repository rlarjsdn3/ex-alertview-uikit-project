//
//  PopoverViewController.swift
//  AlertView
//
//  Created by 김건우 on 11/3/23.
//

import UIKit

class PopoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showPopover(_ sender: UIButton) {
        let alert = UIAlertController(title: "Emails", message: "What do you want to do with the message?", preferredStyle: .actionSheet)
        
        if let popover = alert.popoverPresentationController {
            // ⭐️ 팝오버가 어느 뷰를 기준으로 표시하게 할지 결정
            popover.sourceView = sender
            // ⭐️ 정한 뷰를 기준으로 팝오버의 위치를 결정
            // width(혹은 height) 중간에 팝오버가 위치하게 됨.
            popover.sourceRect = sender.bounds
//            popover.sourceRect = CGRect(x: 0, y: 0, width: 200.0, height: 100.0)
            popover.permittedArrowDirections = [.up]
        }
        
        let action1 = UIAlertAction(title: "Move to Inbox", style: .default, handler: nil)
        alert.addAction(action1)
        let action2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(action2)
        let action3 = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        alert.addAction(action3)
        
        present(alert, animated: true)
    }

}
