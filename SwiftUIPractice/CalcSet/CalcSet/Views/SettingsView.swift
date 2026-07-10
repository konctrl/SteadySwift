//
//  SettingsView.swift
//  CalcSet
//
//  Created by KWON HYUKMIN on 7/10/26.
//

import SwiftUI

struct SettingsView: View {
    @State private var isAirplaneToggleOn: Bool = false
    @State private var isVPNToggleOn: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Image(systemName: "apple.intelligence")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .padding(4)
                            .background(Gradient(colors: [.blue, .red, .green, .yellow]))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        NavigationLink(destination : Text("My Profile").font(.largeTitle)){
                            VStack(alignment: .leading) {
                                Text("HYUKMIN KWON")
                                    .font(.system(size: 21))
                                    .fontWeight(.bold)
                                Text("Apple Account, iCloud and more")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }.padding([.leading], 8)
                        }
                    }.padding(.vertical, 8)
                    
                    HStack(spacing: 40) {
                        ZStack {
                            Image(systemName: "apple.intelligence")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .padding(4)
                                .background(Gradient(colors: [.blue, .red, .green, .yellow]))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                            Circle()
                                .fill(.pink)
                                .frame(width: 28, height: 28)
                                .offset(x:21, y:0)
                        }
                        
                        NavigationLink(destination: Text("Family Set up Page")) {
                            Text("Family")
                                .font(.system(size: 18))
                                .foregroundColor(.primary)
                        }
                    }
                    
                }
                
                
                Section {
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.orange)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Toggle("Airplane", isOn: $isAirplaneToggleOn)
                    }
                    
                    HStack {
                        Image(systemName: "wifi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                        NavigationLink(destination: Text("Wi-fi Page")) {
                            HStack {
                                Text("Wi-Fi")
                                    .font(.system(size: 18))
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                Text("olhkyle")
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    HStack {
                        Image(systemName: "bluetooth")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                        NavigationLink(destination: Text("Accessibility Set Page")) {
                            HStack {
                                Text("Bluetooth")
                                    .font(.system(size: 18))
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                
                                Text(isAirplaneToggleOn ? "On" : "Off")
                                    .font(.system(size: 16))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    HStack {
                        Image(systemName: "antenna.radiowaves.left.and.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                        NavigationLink(destination: Text("Cellular Set Page")) {
                            Text("셀룰러")
                                .font(.system(size: 18))
                                .foregroundColor(.primary)
                        }
                    }
                    
                    HStack {
                        Image(systemName: "battery.100percent")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.green)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        
                        NavigationLink(destination: Text("Accessibility Set Page")) {
                            Text("배터리")
                                .font(.system(size: 18))
                                .foregroundColor(.primary)
                        }
                    }
                    
                    HStack {
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                        Toggle("VPN", isOn: $isVPNToggleOn)
                        
                    }
                }
            }.navigationTitle("Settings")
            
        }
    }
}

//#Preview {
//    SettingsView()
//}
