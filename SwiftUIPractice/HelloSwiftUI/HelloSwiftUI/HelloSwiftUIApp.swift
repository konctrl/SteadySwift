//
//  HelloSwiftUIApp.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/11/26.
//

import SwiftUI

@main
struct HelloSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, .init(identifier: "ko_KR"))
                .environment(\.colorScheme, .light)
            
            ContentView()
                .environment(\.locale, .init(identifier: "en_US"))
                .environment(\.layoutDirection, .rightToLeft)
                .environment(\.colorScheme, .dark)
        }
    }
}
