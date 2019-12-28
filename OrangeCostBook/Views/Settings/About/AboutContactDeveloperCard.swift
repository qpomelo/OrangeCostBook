//
//  AboutContactDeveloperCard.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutContactDeveloperCard: View {
    var body: some View {
        ZStack {
            
            // 背景
            Rectangle()
                .foregroundColor(Color("List Card BackgroundColor"))
                .cornerRadius(10)
            
            VStack {
                
                HStack {
                    Text("联系开发者")
                        .font(Font.custom("PingFangSC-Medium", size: 12))
                        .foregroundColor(Color("List Card GroupTitle FontColor"))
                        .padding(.top, 16)
                    Spacer()
                }
                
                // Bug 反馈
                HStack {
                    
                    Image(systemName: "ant.fill")
                        .foregroundColor(Color("About ReportBug IconColor"))
                        .imageScale(.medium)
                        .frame(width: 24, height: 24)
                    
                    Text("Bug 反馈")
                        .font(Font.custom("PingFangSC", size: 14))
                        .foregroundColor(Color("List Card ItemTitle FontColor"))
                        .padding(.leading, 16)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("List Card LinkColor"))
                        .imageScale(.small)
                        .frame(width: 12, height: 12)
                    
                }
                .padding(.top, 16)
                
                // 建议新功能
                HStack {
                    
                    Image(systemName: "exclamationmark.bubble.fill")
                        .foregroundColor(Color("About SuggestFeature IconColor"))
                        .imageScale(.medium)
                        .frame(width: 24, height: 24)
                    
                    Text("建议新功能")
                        .font(Font.custom("PingFangSC", size: 14))
                        .foregroundColor(Color("List Card ItemTitle FontColor"))
                        .padding(.leading, 16)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color("List Card LinkColor"))
                        .imageScale(.small)
                        .frame(width: 12, height: 12)
                    
                }
                .padding(.top, 16)
                
                // 用户交流群
                Button(action: {
                    UIApplication.shared.open(URL(string: "https://t.me/qpomeloCostBook")!)
                }) {
                    HStack {
                        
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(Color("About JoinGroup IconColor"))
                            .imageScale(.medium)
                            .frame(width: 24, height: 24)
                        
                        Text("加入用户讨论群")
                            .font(Font.custom("PingFangSC", size: 14))
                            .foregroundColor(Color("List Card ItemTitle FontColor"))
                            .padding(.leading, 16)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("List Card LinkColor"))
                            .imageScale(.small)
                            .frame(width: 12, height: 12)
                        
                    }
                    .padding(.top, 16)
                }
                
                // 退款提示
                HStack {
                    
                    Text("如果您要退款此 app，请您与 Apple 联系")
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

struct AboutContactDeveloperCard_Previews: PreviewProvider {
    static var previews: some View {
        AboutContactDeveloperCard()
    }
}
