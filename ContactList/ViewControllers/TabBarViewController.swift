//
//  ViewController.swift
//  ContactList
//
//  Created by Даниил Петров on 20.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {

        guard let contactListVC = viewControllers?.first as? FirstNavController else { return }
        guard let sectionVC = viewControllers?.last as? SecondNavController else { return }
        
        let persons = Contact.getContactList()
        
        contactListVC.contactList = persons
        sectionVC.contactList = persons
    }
}
