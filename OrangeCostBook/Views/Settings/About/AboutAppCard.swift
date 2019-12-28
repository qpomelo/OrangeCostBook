//
//  AboutAppCard.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutAppCard: View {
    var body: some View {
        ZStack {
           
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color("AboutBackground StartColor"), Color("AboutBackground EndColor")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(10)
                
                .shadow(color: Color("About Card ShadowColor"), radius: 10, x: 0, y: 5)
                .frame(height: 232, alignment: .leading)
            
            HStack{
                Spacer()
                Image("AboutBackground")
            }
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("1.0.0 Developer Beta")
                        .font(Font.custom("PingFangSC", size: 14))
                        .opacity(0.2)
                        // .multilineTextAlignment(.trailing)
                        .lineLimit(1)
                    Spacer()
                }
            }
            .padding(.top, 18)
            .padding(.trailing, 20)
            
            VStack {
                Spacer()
                
                HStack {
                    Text("橙子记账")
                        .font(Font.custom("PingFangSC-Medium", size: 28))
                        .foregroundColor(.white)
                    Spacer()
                }
                
                HStack {
                    Text("By QPomelo")
                        .font(Font.custom("Futura", size: 14))
                        .foregroundColor(.white)
                        .opacity(0.6)
                    Spacer()
                }
                
            }
            .padding(.leading, 20)
            .padding(.bottom, 20)
            
        }
    }
}

struct AboutAppCard_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppCard()
    }
}
