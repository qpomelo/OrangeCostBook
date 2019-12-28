//
//  CostIcon.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/16.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct CostIconWithTitle: View {
    
    var icon: String
    var color: String
    var title: String
    var titleColor: String = "Button Default FontColor"
    
    var body: some View {
        
        VStack {
            
            CostIcon(icon: icon, color: color)
            
            Text(title)
                .font(Font.custom("PingFangSC-Medium", size: 10))
                .foregroundColor(Color(titleColor))
            
            
            
        }
    }
    
}

struct CostIcon: View {
    
    var icon: String
    var color: String
    
    var body: some View {
        
        VStack {
            
            ZStack(alignment: .center) {
                
                Circle()
                    .foregroundColor(Color(UIColor(hexString: color)!))
                    // .shadow(color: Color("BillItem Shadow Color"), radius: 20, x: 0, y: 5)
                    .frame(width: 42, height: 42, alignment: .center)
                
                Image(icon)
                
            }
            
        }
        
    }
}

struct CostIcon_Previews: PreviewProvider {
    static var previews: some View {
        CostIcon(icon: "typeMetro", color: "#66ccff")
    }
}
