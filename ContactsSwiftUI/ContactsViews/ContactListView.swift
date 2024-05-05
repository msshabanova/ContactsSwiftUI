//
//  ContactListView.swift
//  ContactsSwiftUI
//
//  Created by Мария Шабанова on 05.05.2024.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) {contact in
                NavigationLink(destination: ContactView(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

#Preview {
    ContactListView(contacts: Person.getContactList())
}
