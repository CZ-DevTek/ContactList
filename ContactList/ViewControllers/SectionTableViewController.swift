//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 2/3/24.
//


import UIKit

final class SectionTableViewController: UITableViewController {
    
    var contacts: [Contacts]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
            case 0:
                content.text = contact.phoneNumber
                content.image = UIImage(systemName: "phone")
            default:
                content.text = contact.email
                content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

