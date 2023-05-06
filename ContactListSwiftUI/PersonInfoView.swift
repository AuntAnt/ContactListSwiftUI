//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Anton Kuzmin on 04.05.2023.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 120, height: 120)
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: Person.getPersons().first!)
    }
}
