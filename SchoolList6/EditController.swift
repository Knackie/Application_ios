//
//  EditController.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class EditController: UIViewController {
     
    var name:String?;
    var row:Int?;
    
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        nameField.text = name;
    }
}
