//
//  LockProtectSettingsQuickUnlockView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/15.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct LockProtectSettingsQuickUnlockView: View {
    var body: some View {
        ZStack {
            
            // 背景
            Rectangle()
                .foregroundColor(Color("List Card BackgroundColor"))
                .cornerRadius(10)
            
            VStack {
                
                HStack {
                    Text("快速解锁")
                        .font(Font.custom("PingFangSC-Medium", size: 12))
                        .foregroundColor(Color("List Card GroupTitle FontColor"))
                        .padding(.top, 16)
                    Spacer()
                }
                
                // Face ID
                HStack {
                    
                    Image(systemName: "faceid")
                        .foregroundColor(Color("Button Plain FontColor"))
                        .imageScale(.medium)
                        .frame(width: 24, height: 24)
                    
                    Text("面容 ID 解锁")
                        .font(Font.custom("PingFangSC", size: 14))
                        .foregroundColor(Color("List Card ItemTitle FontColor"))
                        .padding(.leading, 16)
                    
                    Spacer()
                    
                    Toggle(isOn: .constant(true)) {Text("")}
                    
                }
                .padding(.top, 16)
                
                // 面容/指纹不可用提示
                HStack {
                    
                    Text("您的设备不支持触控 ID，因此无法使用触控 ID")
                        .font(Font.custom("PingFangSC", size: 12))
                        .foregroundColor(Color("List Card ItemTitle FontColor"))
        
                    Spacer()
                    
                }
                .padding(.top, 16)
                .padding(.bottom, 20)
                
            }
            .padding(.leading, 24)
            .padding(.trailing, 24)
            
            
        }
    }
}

struct LockProtectSettingsQuickUnlockView_Previews: PreviewProvider {
    static var previews: some View {
        LockProtectSettingsQuickUnlockView()
    }
}
