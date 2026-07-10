//
//  ContentView.swift
//  Settings
//
//  Created by KWON HYUKMIN on 7/7/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isAirplaneModeOn: Bool = false
    
    var body: some View {
            NavigationView {
                List {
                    Section {
                        NavigationLink(destination: Text("My Page")) {
                            self.profileCell
                        }
                    }
                    
                    Section {
                        self.toggleCell
                        
                        navigationLinkCell(imageName: "wifi",
                                  iconBackground: .blue,
                                  cellTitle: "Wifi",
                                  subTitle: "WIFIGA") {
                            Text("Wifi Page")
                        }
                        
                        
                        navigationLinkCell(imageName: "bolt",
                                  iconBackground: .blue,
                                  cellTitle: "Bluetooth",
                                  subTitle: isAirplaneModeOn ? "켬" : "끔"){
                            Text("Bluetooth Page")
                        }
                        
                        
                        navigationLinkCell(imageName: "antenna.radiowaves.left.and.right",
                                  iconBackground: .green,
                                  cellTitle: "셀룰러",
                                  subTitle: nil) {
                            Text("셀룰러 화면")
                        }
                        
                    }
                    
                    Section {
                        navigationLinkCell(imageName: "hourglass", iconBackground: .green, cellTitle: "스크린 타임", subTitle: nil) {
                            Text("스크린 타임 화면")
                        }
                    }
                    
                    Section {
                        navigationLinkCell(imageName: "gear",
                                  iconBackground: .gray,
                                  cellTitle: "일반",
                                  subTitle: nil) {
                            Text("일반 페이지")
                        }
                        navigationLinkCell(imageName: "figure.wave.circle",
                                  iconBackground: .blue,
                                  cellTitle: "손쉬운 사용",
                                  subTitle: nil) {
                            Text("손쉬운 사용 페이지")
                        }
                        navigationLinkCell(imageName: "hand.raised.fill",
                                  iconBackground: .blue,
                                  cellTitle: "개인 정보 보호",
                                  subTitle: nil) {
                            Text("개인 정보 보호 페이지")
                        }
                    }
                }
            }.navigationBarTitle("설정", displayMode: .automatic)
    }


    

    
    @ViewBuilder
    private func navigationLinkCell<V: View>(imageName: String, iconBackground: Color, cellTitle: String, subTitle: String?, destination: @escaping () -> V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding([.horizontal, .vertical], 4)
                .background(iconBackground)
                .foregroundColor(.white)
                .cornerRadius(8)
            
            if let subTitle = subTitle {
                NavigationLink(destination : destination()) {
                    HStack {
                        Text(cellTitle)
                        Spacer()
                        Text(subTitle)
                            .foregroundColor(.gray)
                    }
                }
            } else {
                NavigationLink(cellTitle) {
                    destination()
                }
            }
        }
    }
}


extension ContentView {
    private var profileCell: some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.all, 4)
                .background(.gray)
                .foregroundColor(.white)
                .clipShape(Circle())
                

            
            VStack(alignment: .leading, spacing: 4) {
                Text("Kyle Kwon")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                Text("Apple ID, iCloud, 미디어 및 구입")
                    .font(.system(size: 14))
                    
            }.padding(.leading, 6)
            
        }.padding(.vertical, 10)
    }
    
    private var toggleCell: some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.orange)
                .foregroundColor(.white)
                .cornerRadius(8)
            Toggle("에어플레인 모드", isOn: $isAirplaneModeOn)
        }
    }
}

#Preview {
    ContentView()
}
