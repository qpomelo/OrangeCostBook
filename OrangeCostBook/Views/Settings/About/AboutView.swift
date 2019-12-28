//
//  AboutView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        VStack {
            
            QUNavigationBar(title: "关于")
            
            ScrollView {
                
                VStack {
                    
                    // 橙子记账卡片
                    AboutAppCard()
                        // .padding(.top, 58)
                    
                    // 联系开发者卡片
                    AboutContactDeveloperCard()
                        .padding(.top, 12)
                    
                    // 捐赠开发者卡片
                    AboutDonateDeveloperCard()
                        .padding(.top, 12)
                    
                    NavigationLink(destination: SpecialThanksView()) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color("Button Default Background Color"))
                                .cornerRadius(10)
                            Text("开放源代码许可 & 致谢名单")
                                .foregroundColor(Color("Button Default FontColor"))
                                .font(Font.custom("PingFangSC-Medium", size: 14))
                                .padding(.top, 16)
                                .padding(.bottom, 16)
                        }
                    
                    }
                    
                    // 版权声明
                    HStack {
                        Text("© QPomelo 2019-2020, 保留所有权利。\nApp Store 和 iCloud 是 Apple Inc. 在美国及其他国家的的服务商标。\n加入用户讨论群需要安装 Telegram，某些国家无法直接使用 Telegram。")
                            .lineLimit(Int.max)
                            .font(Font.custom("PingFangSC", size: 10))
                            .foregroundColor(Color("About Copyright Text Color"))
                            .padding(.leading, 4)
                            .padding(.top, 12)
                        Spacer()
                    }
                    
                    Rectangle()
                        .frame(height: 40)
                        .foregroundColor(.clear)
                    
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
            }
            
            
        }
        .navigationBarTitle(Text("")) // Add this line
        .navigationBarHidden(true)
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
