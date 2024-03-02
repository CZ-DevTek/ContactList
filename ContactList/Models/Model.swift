//
//  Model.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 27/2/24.
//
import Foundation

struct Contacts {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    func getContacts() -> [Contacts] {
        var contacts: [Contacts] = []
        
        let dataStore = DataStore.shared
        
        let shuffledNames = dataStore.names.shuffled()
        let shuffledSurnames = dataStore.surnames.shuffled()
        let shuffledPhoneNumbers = dataStore.phoneNumbers.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        
        let count = min(shuffledNames.count, shuffledSurnames.count, shuffledPhoneNumbers.count, shuffledEmails.count)
        
        for index in 0..<count {
            let contact = Contacts(
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                phoneNumber: shuffledPhoneNumbers[index],
                email: shuffledEmails[index]
            )
            contacts.append(contact)
        }
        return contacts
    }
}
