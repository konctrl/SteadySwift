//
//  PersonRowView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/19/26.
//

import SwiftUI

struct Person : Identifiable {
    let id = UUID()
    var name: String;
    var phoneNumber: String;
}

struct PersonRowView: View {
    var person: Person


    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(person.name)
                .foregroundColor(.primary)
                .font(.headline)
            HStack(spacing: 3) {
                Label(person.phoneNumber, systemImage: "phone")
            }
            .foregroundColor(.secondary)
            .font(.subheadline)
        }
    }
}
