//
//  FirstNavController.swift
//  ContactList
//
//  Created by Даниил Петров on 28.07.2022.
//

import UIKit

class FirstNavController: UINavigationController {
    
    var contactList: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers.first as? FirstListViewController else { return }
        
        let persons = contactList
        
        contactListVC.contactList = persons
    }
}
