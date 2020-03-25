//
//  BuyProView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2020/3/25.
//  Copyright © 2020 QPomelo. All rights reserved.
//

import SwiftUI

struct BuyProView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            // Banner
            VStack(alignment: .center, spacing: 0) {
                Image("BuyPro_Banner")
                    .padding(.top, -44)
                Spacer()
            }
            
            VStack(spacing: 0) {
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
                    Text("")
                        .opacity(0.8)
                        .padding(.leading, 22)
                        .font(Font.custom("PingFangSC-Medium", size: 14))
                    // 占位符
                    Spacer()
                    // 致谢按钮
                    NavigationLink(destination: Text("Test")) {
                        Text("恢复购买")
                            .font(Font.custom("PingFangSC-Medium", size: 14))
                    }.foregroundColor(Color("Main Theme Color"))
                }
                .padding(.top, 12)
                .padding(.bottom, 12)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        // 标题
                        HStack {
                            Text("立即购买完整版")
                                .foregroundColor(Color("Title Font Color"))
                                .font(Font.custom("PingFangSC-Medium", size: 24))
                            Spacer()
                        }
                        .padding(.top, 120)
                        .padding(.leading, 6)
                        // 副标题
                        Text("解锁橙子账本全部功能")
                            .font(Font.custom("PingFangSC-Medium", size: 12))
                            .opacity(0.4)
                            .padding(.leading, 6)
                        
                        // Features
                        ZStack {
                            
                            BlurView(style: .regular)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .foregroundColor(Color("List Card BackgroundColor"))
                                .cornerRadius(10)
                            
                            VStack(spacing: 0) {
                                HStack(spacing: 0) {
                                    Text("完整版独享的 Moment")
                                        .font(Font.custom("PingFangSC-Medium", size: 12))
                                        .foregroundColor(Color("List Card GroupTitle FontColor"))
                                        .padding(.top, 8)
                                    Spacer()
                                }.padding(.leading, 24)
                                
                                ProFeatureItemView(icon: Image(systemName: "moon.stars.fill"), title: "去除广告", subtitle: "没有任何第三方广告的烦扰")
                                    .padding(.top, 12)
                                
                                ProFeatureItemView(icon: Image(systemName: "app.badge.fill"), title: "预算规划提醒", subtitle: "控制每月预算")
                                    .padding(.top, 12)
                                
                                ProFeatureItemView(icon: Image(systemName: "bookmark.fill"), title: "多账本支持", subtitle: "可以使用多本账本")
                                    .padding(.top, 12)
                                
                                
                                Button(action: {
                                    
                                }) {
                                    HStack(spacing: 0) {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(Color("Main Theme Color"))
                                            .imageScale(.medium)
                                        Text("显示更多")
                                            .font(Font.custom("PingFangSC-Medium", size: 13))
                                            .foregroundColor(Color("Main Theme Color"))
                                            .padding(.leading, 16)
                                        Spacer()
                                    }
                                    .padding(.leading, 30)
                                    .padding(.trailing, 30)
                                }
                                .padding(.top, 12)
                                .padding(.bottom, 18)
                            }
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                            
                        }
                        .padding(.top, 16)
                        
                        // Buy
                        HStack {
                            Text("购买服务暂不可用")
                                .font(Font.custom("PingFangSC-Medium", size: 13))
                                .opacity(0.2)
                            Spacer()
                        }
                        .padding(.leading, 30)
                        .padding(.top, 18)
                        
                        Spacer()
                        
                    }
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                }
                Spacer()
            }
            
        }
            .navigationBarTitle(Text("Title")) // Add this line
            .navigationBarHidden(true)
        
    }
}

struct BuyProView_Previews: PreviewProvider {
    static var previews: some View {
        BuyProView()
    }
}
