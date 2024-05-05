//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Мария Шабанова on 05.05.2024.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Person]
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) {contact in
                Section(header: Text(contact.fullName)) {
                    InformationView(contact: contact)
                }
            }
                .navigationTitle("Contact List")
        }
    }
}

#Preview {
    NumbersView(contacts: Person.getContactList())
}
