//
//  DateCreatedViewController.swift
//  Homepwner
//
//  Created by Raditia Madya on 6/18/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import Foundation
import UIKit

class DateCreatedViewController: UIViewController {
    var datePicker: UIDatePicker!
    var item: Item!
    
    //      override func loadView() {
    //        super.loadView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Date Created"
        
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.date = item.dateCreated
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(datePicker)
        
        datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        item.dateCreated = datePicker.date
    }
}
