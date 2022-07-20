//
//  ViewController.swift
//  ContactList
//
//  Created by Даниил Петров on 20.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    static var contactList = Contact.getContactList()
    /* понимаю, что, наверное, костыль, но так смог прийти к единственной
    рандомной генерации массива контактов */
}
