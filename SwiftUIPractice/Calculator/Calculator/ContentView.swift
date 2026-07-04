//
//  ContentView.swift
//  Calculator
//
//  Created by KWON HYUKMIN on 7/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber: String = "0"
    
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
                
                HStack() {
                    Button(action: {
                        totalNumber = "0"
                    }) {
                        Text("C")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press /") }) {
                        Text("/")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press %") }) {
                        Text("%")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press /") }) {
                        Text("/")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                    
                HStack() {
                    Button(action: {
                        if(totalNumber == "0") {
                            totalNumber = "7"
                        } else {
                            totalNumber += "7"
                        }
                    }) {
                        Text("7")
                            .frame(width: 80, height: 80)
                            .background(Color("NumberButton"))
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 8") }) {
                        Text("8")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 9") }) {
                        Text("9")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press X") }) {
                        Text("X")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                }
                
                HStack() {
                    Button(action: {print("press 4") }) {
                        Text("4")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 5") }) {
                        Text("5")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 6") }) {
                        Text("6")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press -") }) {
                        Text("-")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack() {
                    Button(action: {print("press 1") }) {
                        Text("1")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 2") }) {
                        Text("2")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 3") }) {
                        Text("3")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press +") }) {
                        Text("+")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
                
                HStack() {
                    Button(action: {print("press 0") }) {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press 0") }) {
                        Text("0")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press .") }) {
                        Text(".")
                            .frame(width: 80, height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    Button(action: {print("press =") }) {
                        Text("=")
                            .frame(width: 80, height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                }
            }
        
        }
    }
}

#Preview {
    ContentView()
}
