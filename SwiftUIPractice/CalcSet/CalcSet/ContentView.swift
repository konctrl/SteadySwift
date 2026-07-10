//
//  ContentView.swift
//  CalcSet
//
//  Created by KWON HYUKMIN on 7/10/26.
//

import SwiftUI

struct ContentView: View {
    enum TabItems { case calculator, settings }
    
    @State private var selectedTab = TabItems.calculator
    
    var body: some View {
        TabView(selection: $selectedTab) {
            CalculatorView()
                .accentColor(.white)
                .tag(TabItems.calculator)
                .tabItem { Image(systemName: "light.cylindrical.ceiling").imageScale(.large) }
            
            SettingsView()
                .accentColor(.white)
                .tag(TabItems.settings)
                .tabItem { Image(systemName: "gear").imageScale(.large) }
        }      
    }
}

#Preview {
    ContentView()
}
