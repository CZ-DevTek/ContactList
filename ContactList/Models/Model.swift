//
//  Model.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 27/2/24.
//


struct Contacts {
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Jake", "Laura", "Victoria", "Jenny", "Ann"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins", "Sullivan", "Carter", "Thomas", "Hooks", "Braham"]
let phoneNumbers = ["+7984345634", "+7984476562", "+7984443345", "+7996665542", "+7988564532", "+7889345654", "+7986865532", "+7995435121", "+7899888555", "+7978765654"]
let emails = ["underground@gmail.com", "rockstar@mail.ru", "plainboing@yandex.ru", "bennybenassi@gmail.com", "springrose2@gmail.com", "speedyrat@yandex.ru", "balandir@mail.ru", "balrog@gmail.com", "bulldograge@yandex.ru", "cobainjam@mail.ru"]


func getContacts() -> [Contacts] {
    var contacts: [Contacts] = []
    
    let shuffledNames = names.shuffled()
    let shuffledSurnames = surnames.shuffled()
    
    let count = min(10, min(shuffledNames.count, shuffledSurnames.count))
    
    for index in 0..<count {
        let randomPhone = phoneNumbers[Int.random(in: 0..<phoneNumbers.count)]
        let randomEmail = emails[Int.random(in: 0..<emails.count)]
        
        let contact = Contacts(name: shuffledNames[index], surname: shuffledSurnames[index], phoneNumber: randomPhone, email: randomEmail)
        contacts.append(contact)
    }
    
    return contacts
}

