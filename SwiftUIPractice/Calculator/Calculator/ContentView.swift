//
//  ContentView.swift
//  Calculator
//
//  Created by KWON HYUKMIN on 7/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber: String = "0"
    @State private var tempNumber: Int = 0
    @State private var operatorType: ButtonType = .clear
    @State private var isNotEditing: Bool = true
    
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite, .percent, .divide],
        [.seventh, .eighth, .nineth, .multiple],
        [.fourth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .dot, .equal]
    ]
    
    private func calculateButtonWidth(button buttonType : ButtonType) -> CGFloat {
        let PADDING: CGFloat = 10
        let ROW_COUNT: CGFloat = 4
        // (Full Width - 5 * Padding) / Count of Buttons
        
        switch buttonType {
        case .zero:
            return ((UIScreen.main.bounds.width - 5 * PADDING) / ROW_COUNT) * 2
        default:
            return (UIScreen.main.bounds.width - 5 * PADDING) / ROW_COUNT
        }
        
    }
    
    private func calculateButtonHeight(button buttonType: ButtonType) -> CGFloat {
        let PADDING: CGFloat = 10
        let ROW_COUNT: CGFloat = 4
        // (Full Width - 5 * Padding) / Count of Buttons
        
        return ((UIScreen.main.bounds.width - 5 * PADDING) / ROW_COUNT)
        
    }
    
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
                                
                                // 고려해볼 것
                                // 1) 연산자 우선순위
                                
                                // 아무것도 입력받지 않는 상태 (isNotEditing == true)
                                if isNotEditing {
                                    if data == .clear {
                                        totalNumber = "0"
                                        isNotEditing = true
                                    } else if data == .plus ||
                                                data == .minus ||
                                                data == .divide ||
                                                data == .multiple {
                                        totalNumber = "0"
                                        
                                    }
                                    else {
                                        totalNumber = data.buttonDisplayName
                                        isNotEditing = false // 이미 입력 받은 상태
                                    }
                                    
                                } else {
                                    if data == .clear {
                                        totalNumber = "0"
                                        isNotEditing = true
                                    } else if data == .plus {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .plus
                                        isNotEditing = true // 새로 입력 받을 것
                                        
                                    } else if data == .multiple {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .multiple
                                        isNotEditing = true
                                        
                                    } else if data == .minus {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .minus
                                        isNotEditing = true
                                        
                                    } else if data == .equal{
                                        if operatorType == .plus {
                                            totalNumber = String((Int(totalNumber) ?? 0) + tempNumber)
                                        } else if operatorType == .multiple {
                                            totalNumber = String((Int(totalNumber) ?? 0) * tempNumber)
                                        } else if operatorType == .minus {
                                            totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))
                                        }
                                        
                                    } else {
                                        totalNumber += data.buttonDisplayName
                                    }
                                    
                                }
                            }) {
                                Text(data.buttonDisplayName)
                                    .frame(width: calculateButtonWidth(button: data), height: calculateButtonHeight(button: data))
                                    .background(data.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(data.foregroundColor)
                                    .font(.system(size: 33))
                                    .fontWeight(.bold)
                            }
                        }
                    }
                }
            }
        
        }
    }
}

#Preview {
    ContentView()
}
