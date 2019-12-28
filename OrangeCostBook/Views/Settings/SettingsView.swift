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
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color("List Card BackgroundColor"))
                            .cornerRadius(10)
                        
                        VStack {
                            NavigationLink(destination: SyncAndBackupView()) {
                                SettingsItemView(iconName: "SettingsItemIconCloud", title: "备份与同步")
                            }
                            
                            // SettingsItemView(iconName: "SettingsItemIconTheme", title: "主题")
                            
                            SettingsItemView(iconName: "SettingsItemIconNotify", title: "通知与 Siri 捷径")
                            
                            NavigationLink(destination: LockProtectSettingView(hasPasswd: false)) {
                                SettingsItemView(iconName: "SettingsItemIconLock", title: "密码保护")
                            }
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
                    
                    
                }
            }
            
            VStack {
                Spacer()
                
                Button(action: {}) {
                    VStack {
                        Image("SettingsAchievementListLink")
                            .foregroundColor(.clear)
                        Text("我的成就")
                            .foregroundColor(Color("Button Default FontColor"))
                            .font(Font.custom("PingFangSC-Medium", size: 13))
                    }
                }
                
                Rectangle()
                    .frame(height: 40)
                    .foregroundColor(.clear)
                
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
