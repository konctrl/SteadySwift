//
//  ContentView.swift
//  Calculator
//
//  Created by KWON HYUKMIN on 7/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber: String = "0"
    
    private let buttonData: [[String]] = [
        ["C", "/", "%", "/"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 72))
                }.padding()
                
                ForEach(buttonData, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { data in
                                Button(action: {
                                    if (totalNumber == "0") {
                                        totalNumber = "7"
                                    } else {
                                        totalNumber += "7"
                                    }
                                }) {
                                    Text(data)
                                        .frame(width: 80, height: 80)
                                        .background(.gray)
                                        .cornerRadius(40)
                                        .foregroundColor(.black)
                                        .font(.system(size: 33))
                                }
                            }
                        }
                }
            
                
                
//                HStack() {
//                    Button(action: {print("press 0") }) {
//                        Text("0")
//                            .frame(width: 80, height: 80)
//                            .background(.gray)
//                            .cornerRadius(40)
//                            .foregroundColor(.white)
//                            .font(.system(size: 33))
//                    }
//                    Button(action: {print("press 0") }) {
//                        Text("0")
//                            .frame(width: 80, height: 80)
//                            .background(.gray)
//                            .cornerRadius(40)
//                            .foregroundColor(.white)
//                            .font(.system(size: 33))
//                    }
//                    Button(action: {print("press .") }) {
//                        Text(".")
//                            .frame(width: 80, height: 80)
//                            .background(.gray)
//                            .cornerRadius(40)
//                            .foregroundColor(.white)
//                            .font(.system(size: 33))
//                    }
//                    Button(action: {print("press =") }) {
//                        Text("=")
//                            .frame(width: 80, height: 80)
//                            .background(.orange)
//                            .cornerRadius(40)
//                            .foregroundColor(.white)
//                            .font(.system(size: 33))
//                    }
//                }
            }
        
        }
    }
}

#Preview {
    ContentView()
}
