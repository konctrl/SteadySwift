//
//  ButtonType.swift
//  Calculator
//
//  Created by KWON HYUKMIN on 7/7/26.
//

import SwiftUI

enum ButtonType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
    case dot, equal, plus, minus, multiple, divide
    case percent, opposite, clear
    
    var buttonDisplayName : String {
        switch self {
        case .first :
            return "1"
        case .second :
            return "2"
        case .third :
            return "3"
        case .fourth :
            return "4"
        case .fifth :
            return "5"
        case .sixth :
            return "6"
        case .seventh :
            return "7"
        case .eighth :
            return "8"
        case .nineth :
            return "9"
        case .zero :
            return "0"
        case .dot :
            return ","
        case .equal :
            return "="
        case .plus :
            return "+"
        case .minus :
            return "-"
        case .multiple :
            return "*"
        case .divide :
            return "/"
        case .percent :
            return "%"
        case .opposite :
            return "/"
        case .clear :
            return "C"

        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .first, .second, . third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .dot :
            return Color("NumberButton")
            
            
        case .equal, .plus, .minus, .multiple, .divide :
            return Color.orange
            
        case .percent, .opposite, .clear :
            return Color.gray
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .first, .second, . third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .dot, .equal, .plus, .minus, .multiple, .divide :
            return Color.white
            
        case .percent, .opposite, .clear :
            return Color.black
        }
    }
}
