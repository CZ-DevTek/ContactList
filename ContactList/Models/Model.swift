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
}
let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Jake", "Laura", "Victoria", "Jenny", "Ann"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins", "Sullivan", "Carter", "Thomas", "Hooks", "Braham"]
let phoneNumbers = ["+7984345634", "+7984476562", "+7984443345", "+7996665542", "+7988564532", "+7889345654", "+7986865532", "+7995435121", "+7899888555", "+7978765654"]
let emails = ["underground@gmail.com", "rockstar@mail.ru", "plainboing@yandex.ru", "bennybenassi@gmail.com", "springrose2@gmail.com", "speedyrat@yandex.ru", "balandir@mail.ru", "balrog@gmail.com", "bulldograge@yandex.ru", "cobainjam@mail.ru"]


private func getContact() -> [Contacts]{
    var contacts: [Contacts] = []
    
    for _ in 1...10 {
        let randomName = names[Int.random(in: 0..<names.count)]
        let randomSurname = surnames[Int.random(in: 0..<surnames.count)]
        let randomPhone = phoneNumbers[Int.random(in: 0..<phoneNumbers.count)]
        let randomEmail = emails[Int.random(in: 0..<emails.count)]
        
        let contact = Contacts(name: randomName, surname: randomSurname, phoneNumber: randomPhone, email: randomEmail)
        contacts.append(contact)
    }
    
    return contacts
}
