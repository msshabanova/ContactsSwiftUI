//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Мария Шабанова on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contacts: contacts)
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Contacts")
            }
            NumbersView(contacts: contacts)
            .tabItem {
                Image(systemName: "phone.fill")
                Text("Numbers")
            }
        }
    }
}

#Preview {
    ContentView()
}
