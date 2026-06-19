//
//  DynamicListView2.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/19/26.
//

import SwiftUI

struct DynamicListView2: View {
   
    var body: some View {
      
        let staff: [Person]  = [
            Person( name: "kyle", phoneNumber: "010-3614-3373"),
            Person( name: "steve", phoneNumber: "010-3000-3373")
        ]
        
        return List {
               Section (
                header: Text("Contacts").font(.title),
                footer:
                    HStack {
                        Spacer()
                        Text("\(staff.count) 명").font(.headline)
                    }
               ) {
                   
                   ForEach(staff, id: \.self.id) {
                       person in
                       PersonRowView(person: person)
                   }
               }
            }
    }
}


#Preview {
    DynamicListView2()
}
