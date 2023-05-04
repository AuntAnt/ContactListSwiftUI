//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anton Kuzmin on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            PersonListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            ExtendedPersonListView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
