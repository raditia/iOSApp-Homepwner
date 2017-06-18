//
//  CustomTextField.swift
//  Homepwner
//
//  Created by Raditia Madya on 6/18/17.
//  Copyright © 2017 Universitas Gadjah Mada. All rights reserved.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    override func becomeFirstResponder() -> Bool {
        borderStyle = .line
        return super.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        borderStyle = .roundedRect
        return super.resignFirstResponder()
    }
}
