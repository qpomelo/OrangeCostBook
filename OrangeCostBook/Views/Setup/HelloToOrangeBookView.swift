//
//  HelloToOrangeBookView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2020/3/22.
//  Copyright © 2020 QPomelo. All rights reserved.
//

import SwiftUI

struct HelloToOrangeBookView: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack(spacing: 0) {
                Text("欢迎来到")
                    .font(Font.custom("PingFangSC-Medium", size: 28))
                
                Text("橙子账本")
                    .foregroundColor(Color("Main Theme Color"))
                    .font(Font.custom("PingFangSC-Medium", size: 28))
                    // .padding(.leading, 4)
                
            }.padding(.top, 106)
            
            Text("你的最后一本账本")
                .font(Font.custom("PingFangSC", size: 12))
                .opacity(0.5)
                .padding(.top, 4)
            
            // 特点介绍
            VStack(alignment: .leading, spacing: 22) {
                
                // 简洁美观的界面 - 没有广告，也没有理财推荐
                HStack {
                    
                    ZStack {
                        Circle()
                            .opacity(0.05)
                            .frame(width: 46, height: 46)
                        
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(Color("Main Theme Color"))
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("简洁美观的界面")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                        
                        Text("没有广告，也没有理财推荐")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                            .opacity(0.5)
                    }.padding(.leading, 20)
                    
                }
                // 开放账本格式 - 你可以导出橙子账本的所有数据
                HStack {
                    
                    ZStack {
                        Circle()
                            .opacity(0.05)
                            .frame(width: 46, height: 46)
                        
                        Image(systemName: "folder.fill.badge.person.crop")
                            .foregroundColor(Color("Main Theme Color"))
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("开放账本格式")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                        
                        Text("你可以导出橙子账本的所有数据")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                            .opacity(0.5)
                    }.padding(.leading, 20)
                    
                }
                // 为 iOS 13 和 iPad OS 打造 - 现已支持暗色模式
                HStack {
                    
                    ZStack {
                        Circle()
                            .opacity(0.05)
                            .frame(width: 46, height: 46)
                        
                        Image(systemName: "light.max")
                            .foregroundColor(Color("Main Theme Color"))
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("为 iOS 13 和 iPad OS 打造")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                        
                        Text("现已支持暗色模式")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                            .opacity(0.5)
                    }.padding(.leading, 20)
                    
                }
                
            }.padding(.top, 42)
            
            Spacer()
            
            HStack {
                Spacer()
                Text("* 仅完整版没有广告")
                    .font(Font.custom("PingFangSC-Medium", size: 13))
                    .opacity(0.2)
                Spacer()
            }.padding(.bottom, 14)
            
            Button(action: {
                let result = Config.updateConfig(Config(name: "setupDone", value: "true"))
                if result {
                    let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                    if let windowScenedelegate = scene?.delegate as? SceneDelegate {
                       let window = UIWindow(windowScene: scene!)
                       window.rootViewController = UIHostingController(rootView: ContentView())
                       windowScenedelegate.window = window
                       window.makeKeyAndVisible()
                    }
                }
                
            }) {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color("Main Theme Color"))
                        .cornerRadius(10)
                        .opacity(0.1)
                    Text("下一步")
                        .font(Font.custom("PingFangSC-Medium", size: 13))
                        .foregroundColor(Color("Main Theme Color"))
                }
            }
            .frame(height: 52)
            .padding(.bottom, 44)
            
            
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        
    }
    
}

struct HelloToOrangeBookView_Previews: PreviewProvider {
    static var previews: some View {
        HelloToOrangeBookView()
    }
}
