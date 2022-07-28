//
//  SecondListViewController.swift
//  ContactList
//
//  Created by Даниил Петров on 20.07.2022.
//

import UIKit

class SecondListViewController: UITableViewController {

    var contactList: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        "\(contactList[section].name) \(contactList[section].surName)"
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell",
                                                 for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = contact.number
            content.image = UIImage.init(systemName: "phone")
        } else {
            content.text = contact.eMail
            content.image = UIImage.init(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
