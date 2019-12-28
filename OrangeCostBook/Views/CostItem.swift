//
//  CostItem.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/6.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct CostItem: View {
    
    var icon: String
    var color: String
    
    var cost: NSDecimalNumber
    var moneySymbol: String
    var spend: Bool
    var description: String
    
    
    var body: some View {
        
        HStack {
            
            
            CostIcon(icon: icon, color: color)
            /*ZStack(alignment: .center) {
                
                Circle()
                    .foregroundColor(Color(red: 0.29, green: 0.56, blue: 0.88))
                    // .shadow(color: Color("BillItem Shadow Color"), radius: 20, x: 0, y: 5)
                    .frame(width: 42, height: 42, alignment: .center)
                
                Image(icon)
                    
            }*/
            
            Text("\(spend ? "-" : "+") \(moneySymbol) \(cost)")
                .font(Font.custom("SFProRounded-Medium", size: 14))
                .opacity(0.6)
                .padding(.leading, 16)
                .frame(height: 32)
                
            Text(description)
                .font(Font.custom("PingFangSC-Medium", size: 14))
                .opacity(0.4)
                .padding(.leading, 8)
                .frame(height: 32)
            
            Spacer()
            
        }
        .padding(.leading, 38)
        .frame(height: 64)
        
    }
}

struct CostItem_Previews: PreviewProvider {
    static var previews: some View {
        CostItem(icon: "typeMetro", color: "#66ccff", cost: 3.00, moneySymbol: "$", spend: true, description: "地铁")
    }
}
