//
//  User.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/20/26.
//
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    
    var name: String
    var age: Int?
    var description: String?
    
    init(name: String, age: Int? = nil, description: String? = nil) {
        self.name = name
        self.age = age
        self.description = description
    }

}




//extension User: Hashable {
// 
// 
//}
