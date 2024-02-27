//
//  ViewController.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 27/2/24.
//

import UIKit

final class ContactsListViewController: UITableViewController {
    
    private let contacts = getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVC = segue.destination as? ContactDetailsViewController
        detailsVC?.contact = contacts[indexPath.row]
    }
}
//MARK: - extension UITableViewController

extension ContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    /*
     override func numberOfSections(in: UITableView) -> Int {
     5
     }
     */
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.name
        content.secondaryText = contact.surname
        
        cell.contentConfiguration = content
        
        return cell
    }
}

