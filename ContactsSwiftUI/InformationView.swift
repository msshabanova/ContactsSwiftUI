//
//  InformationView.swift
//  ContactsSwiftUI
//
//  Created by Мария Шабанова on 06.05.2024.
//

import SwiftUI

struct InformationView: View {
    let contact: Person
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Image(systemName: "phone")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text("\(contact.phoneNumber)")
                Spacer()
            }
            .frame(height: 20)
            
            HStack {
                Image(systemName: "tray")
                    .resizable()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text(contact.email)
                Spacer()
            }
            .frame(height: 20)
        }
        .padding()
    }
}

#Preview {
    InformationView(contact: Person.getContactList()[0])
}
