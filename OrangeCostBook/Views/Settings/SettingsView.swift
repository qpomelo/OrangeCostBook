//
//  SettingsView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        ZStack {
            VStack {
                QUNavigationBar(title: "设置")
                ScrollView {
                    
                    NavigationLink(destination: BuyProView()) {
                        ZStack {
                            
                            Rectangle()
                                .foregroundColor(Color("Settings Unlock Pro Background Color"))
                                .cornerRadius(10)
                            
                            HStack {
                                
                                Image("SettingsItemIconPro")
                                    .padding(.leading, 22)
                                
                                Text("解锁完整版")
                                    .font(Font.custom("PingFangSC", size: 14))
                                    .foregroundColor(Color("Settings Unlock Pro TextColor"))
                                    .padding(.leading, 18)
                                
                                Spacer()
                                
                                
                            }.frame(height: 52)
                            
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    }
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color("List Card BackgroundColor"))
                            .cornerRadius(10)
                        
                        VStack {
                            NavigationLink(destination: SyncAndBackupView()) {
                                SettingsItemView(iconName: "SettingsItemIconCloud", title: "备份与同步")
                            }
                            
                            SettingsItemView(iconName: "SettingsItemIconTheme", title: "个性化")
                            
                            SettingsItemView(iconName: "SettingsItemIconCostType", title: "账单分类")
                            
                            SettingsItemView(iconName: "SettingsItemIconNotify", title: "通知与 Siri 捷径")
                            
                            NavigationLink(destination: LockProtectSettingView(hasPasswd: false)) {
                                SettingsItemView(iconName: "SettingsItemIconLock", title: "密码保护")
                            }
                            
                            SettingsItemView(iconName: "SettingsItemIconConvert", title: "汇率转换")
                            
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color("List Card BackgroundColor"))
                            .cornerRadius(10)
                        
                        VStack {
                            SettingsItemView(iconName: "SettingsItemIconStar", title: "去 App Store 评分")
                            
                            SettingsItemView(iconName: "SettingsItemIconTestFlight", title: "体验 Beta 版本")
                            
                            NavigationLink(destination: AboutView()) {
                                SettingsItemView(iconName: "SettingsItemIconAbout", title: "关于")
                            }
                            
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    
                    // Pigeon by QPomelo
                    HStack(spacing: 0) {
                        Spacer()
                        Text("橙子账本")
                            .font(Font.custom("PingFangSC-Medium", size: 10))
                            .opacity(0.5)
                        Text("by QPomelo")
                            .font(Font.custom("Futura", size: 10))
                            .opacity(0.25)
                            .padding(.leading, 4)
                        
                        Spacer()
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 30)

                }
            }
            
            
            
        }
        .navigationBarTitle(Text("Title")) // Add this line
        .navigationBarHidden(true)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
