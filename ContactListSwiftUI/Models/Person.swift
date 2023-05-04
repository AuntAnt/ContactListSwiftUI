//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Anton Kuzmin on 04.05.2023.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataSource = DataManager.shared
        
        let names = dataSource.names.shuffled()
        let surnames = dataSource.surnames.shuffled()
        let phones = dataSource.phones.shuffled()
        let emails = dataSource.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            persons.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    phone: phones[index],
                    email: emails[index]
                )
            )
        }
        
        return persons
    }
}
