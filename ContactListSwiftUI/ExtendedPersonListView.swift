//
//  ExtendedPersonListView.swift
//  ContactListSwiftUI
//
//  Created by Anton Kuzmin on 04.05.2023.
//

import SwiftUI

struct ExtendedPersonListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ExtendedPersonListView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedPersonListView(persons: Person.getPersons())
    }
}
