//
//  DataStore.swift
//  ContactList
//
//  Created by Carlos Garcia Perez on 2/3/24.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Jake",
        "Laura",
        "Victoria",
        "Jenny",
        "Ann"
    ]
    let surnames = [
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins",
        "Sullivan",
        "Carter",
        "Thomas",
        "Hooks",
        "Braham"
    ]
    let phoneNumbers = [
        "+7984345634",
        "+7984476562",
        "+7984443345",
        "+7996665542",
        "+7988564532",
        "+7889345654",
        "+7986865532",
        "+7995435121",
        "+7899888555",
        "+7978765654"
    ]
    let emails = [
        "underground@gmail.com",
        "rockstar@mail.ru",
        "plainboing@yandex.ru",
        "bennybenassi@gmail.com",
        "springrose2@gmail.com",
        "speedyrat@yandex.ru",
        "balandir@mail.ru",
        "balrog@gmail.com",
        "bulldograge@yandex.ru",
        "cobainjam@mail.ru"
    ]
    private init() {}
}

