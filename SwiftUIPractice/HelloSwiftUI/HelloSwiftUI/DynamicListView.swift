//
//  DynamicListView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/20/26.
//

import SwiftUI

struct DynamicListView: View {
    let drinks: [String] = ["Coke", "Sprite", "Soda", "Apple Juice"]
    let fruits: [String] = ["Apple", "Banana", "Cactus"]
    
    var body: some View {
        List {
            Text("Drinks").font(.largeTitle)
            
            ForEach(drinks, id: \.self) {
                Text($0)
            }
            
            Spacer()
            
            Image(systemName: "cart").padding().background(RoundedRectangle(cornerRadius: 8).strokeBorder()).onTapGesture {
                print("Hello")
            }
            
            Text("Fruits").font(.largeTitle)
            
            ForEach(fruits, id: \.self) {
                Text($0)
            }
        }
    }
}

#Preview {
    DynamicListView()
}
