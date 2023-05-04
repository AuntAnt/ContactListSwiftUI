//
//  PersonListView.swift
//  ContactListSwiftUI
//
//  Created by Anton Kuzmin on 04.05.2023.
//

import SwiftUI

struct PersonListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: PersonInfoView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView(persons: Person.getPersons())
    }
}
