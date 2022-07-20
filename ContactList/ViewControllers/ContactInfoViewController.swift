//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Даниил Петров on 20.07.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = contact.number
        eMailLabel.text = contact.eMail
        navigationItem.title = "\(contact.name) \(contact.surName)"
        tabBarItem.isEnabled = false
        
    }
}
