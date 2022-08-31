//
//  MoreInformationViewController.swift
//  ContactListApp
//
//  Created by Юлия on 31.08.2022.
//

import UIKit

class MoreInformationViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = contact.fullName
        phoneNumberLabel.text = String(contact.phoneNumber)
       
    }
    
}
