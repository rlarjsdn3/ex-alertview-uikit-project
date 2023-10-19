//
//  UIAlertAction+Extension.swift
//  AlertView
//
//  Created by 김건우 on 10/18/23.
//

import UIKit

extension UIAlertController {
    
    func addAction(_ actions: [UIAlertAction]) {
        for action in actions {
            self.addAction(action)
        }
    }
    
}
