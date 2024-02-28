//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 27/2/24.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var email: UILabel!
    
    var contact: Contacts!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        phoneNumber.text = contact.phoneNumber
        email.text = contact.email
    }
}
