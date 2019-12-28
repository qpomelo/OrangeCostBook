//
//  AboutDonateDeveloperCard.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutDonateDeveloperCard: View {
    var body: some View {
        ZStack {
            
            // 背景
            Rectangle()
                .foregroundColor(Color("List Card BackgroundColor"))
                .cornerRadius(10)
            
            VStack {
                
                HStack {
                    Text("捐赠开发者")
                        .font(Font.custom("PingFangSC-Medium", size: 12))
                        .foregroundColor(Color("List Card GroupTitle FontColor"))
                        .padding(.top, 16)
                    Spacer()
                }
                
                ScrollView {
                    HStack {
                        
                        AboutDonateButton(iconName: "Donate Icon Coffee", price: "$1.99")
                        
                        AboutDonateButton(iconName: "Donate Icon Noodle", price: "$2.99")
                        
                        AboutDonateButton(iconName: "", price: "其他金额")
                        
                    }
                }
                .frame(height: 42)
                .padding(.bottom, 14)
                
                HStack {
                    Text("感谢您对个人开发者的支持!")
                        .font(Font.custom("PingFangSC", size: 12))
                        .foregroundColor(Color("List Card ItemTitle FontColor"))
                    Spacer()
                }.padding(.bottom, 20)
                
            }
            .padding(.leading, 24)
            .padding(.trailing, 24)
        }
    }
}

struct AboutDonateDeveloperCard_Previews: PreviewProvider {
    static var previews: some View {
        AboutDonateDeveloperCard()
    }
}
