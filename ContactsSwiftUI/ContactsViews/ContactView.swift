//
//  ContactView.swift
//  ContactsSwiftUI
//
//  Created by Мария Шабанова on 05.05.2024.
//

import SwiftUI

struct ContactView: View {
    let contact: Person
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.secondarySystemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                InformationView(contact: contact)
            }
            .frame(height: 250)
            .background(.white)
            .cornerRadius(15)
            .navigationTitle(contact.fullName)
            .padding()
        }
    }
}

#Preview {
    ContactView(contact: Person.getContactList()[0])
}
