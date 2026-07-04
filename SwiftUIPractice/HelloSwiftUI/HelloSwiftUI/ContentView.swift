//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/11/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.layoutDirection) var layoutDirection
    
    var body: some View {
        
        if layoutDirection == .leftToRight {
            return ScrollView {
                FirstView()
                // Text("Left to Right")
            }
        } else {
            return ScrollView {
                FirstView()
                // Text("Right to Left")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
