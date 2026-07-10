//
//  CalculatorView.swift
//  CalcSet
//
//  Created by KWON HYUKMIN on 7/11/26.
//

import SwiftUI

struct CalculatorView: View {
    @State private var showingAlert = false
    @State private var showingActionSheet = false
    
    var body: some View {
        VStack {
            Button(action : { self.showingAlert = true }) {
                Text("show calculator")
                    .font(.system(size: 32))
                    .fontWeight(.bold)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(12)
            }.alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("ALERT"),
                    message: Text("내용을 보여주세요"),
                    // 생략하면 ok 버튼만 보임
                    primaryButton: .default(Text("확인"), action: { self.showingAlert = false }),
                    secondaryButton: .cancel(Text("취소"))
                )
            }
            
            Button(action : { self.showingActionSheet = true }) {
                Text("show ActionSheet")
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 8)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(12)
            }.actionSheet(isPresented: $showingActionSheet) {
                // 아이폰, 애플워치에서만 사용 가능 -> 아이패드 런타임 오류
                ActionSheet(
                    title: Text("제목"),
                    message: Text("내용을 보여주세요"),
                    // 생략하면 Cancel 버튼만 보임
                    buttons: [
                        .default(Text("확인 1")),
                        .default(Text("확인 2")),
                        .default(Text("확인 3")),
                        .default(Text("확인 4")),
                        .default(Text("확인 5")),
                        .cancel(Text("취소")),
                    ]
                    
                    
                )
            }
            
         
        }
    }
}


