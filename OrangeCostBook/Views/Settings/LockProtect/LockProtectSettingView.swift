//
//  LockProtectSettingView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/15.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct LockProtectSettingView: View {
    
    @State var hasPasswd: Bool
    
    var body: some View {
        
        VStack {
            QUNavigationBar(title: "密码保护")
            
            VStack {
                
                // 设置/更改密码保护
                ZStack {
                    
                    // 背景
                    Rectangle()
                        .foregroundColor(Color("List Card BackgroundColor"))
                        .cornerRadius(10)
                    
                    HStack {
                        
                        Image("SettingsItemIconLock")
                            .padding(.leading, 24)
                        
                        Text("密码保护")
                            .font(Font.custom("PingFangSC", size: 14))
                            .foregroundColor(Color("List Card ItemTitle FontColor"))
                            .padding(.leading, 16)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text((hasPasswd ? "更改" :" 设定"))
                                .font(Font.custom("PingFangSC-Medium", size: 14))
                                .foregroundColor(Color("Button Plain FontColor"))
                                .padding(.trailing, 36)
                        }
                    }
                    
                }.frame(height: 56)
                
                // 快速解锁
                LockProtectSettingsQuickUnlockView()
                    .frame(height: 122)
                    .padding(.top, 16)
                
                Spacer()
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            
            // 密码说明
            Text("密码保护为应用锁，并不能加密账本")
                .lineLimit(Int.max)
                .foregroundColor(Color("Description FontColor"))
                .font(Font.custom("PingFangSC-Medium", size: 11))
                // .multilineTextAlignment(.center)
                .padding(.bottom, 36)
        }.navigationBarTitle(Text("密码保护"))
        .navigationBarHidden(true)
    }
}

struct LockProtectSettingView_Previews: PreviewProvider {
    static var previews: some View {
        LockProtectSettingView(hasPasswd: false)
    }
}
