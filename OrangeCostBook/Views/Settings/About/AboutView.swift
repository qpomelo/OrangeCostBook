//
//  AboutView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            // 导航栏
            HStack {
                // 返回按钮
                Button(action: {
                    self.mode.wrappedValue.dismiss()
                }) {
                    ZStack {
                        Circle()
                            .foregroundColor(Color("NavigationBar DefaultButton BackgroundColor"))
                            .frame(width: 28, height: 28)
                        Image("BackButton")
                            .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
                    }
                }
                // 标题
                Text("关于")
                    .opacity(0.8)
                    .padding(.leading, 22)
                    .font(Font.custom("PingFangSC-Medium", size: 14))
                // 占位符
                Spacer()
                // 致谢按钮
                NavigationLink(destination: SpecialThanksView()) {
                    Text("开发团队与致谢")
                        .font(Font.custom("PingFangSC-Medium", size: 14))
                }.foregroundColor(Color("Main Theme Color"))
            }
            .padding(.top, 12)
            .padding(.bottom, 12)
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
            ScrollView {
                
                VStack {
                    
                    // 橙子记账卡片
                    AboutAppCard()
                        // .padding(.top, 58)
                    
                    // 联系开发者卡片
                    AboutContactDeveloperCard()
                        .padding(.top, 12)
                    
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://pigeon.qpomelo.app/")!)
                    }) {
                        Image("Ad_Pigeon")
                    }
                    
                    
                    // 版权声明
                    HStack {
                        Text("© QPomelo 2019-2020, 保留所有权利。\nApp Store 和 iCloud 是 Apple Inc. 在美国及其他国家注册的服务商标。\n加入用户讨论群需要安装 Telegram，某些国家无法直接使用 Telegram。")
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
