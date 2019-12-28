//
//  AboutDonateButton.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct AboutDonateButton: View {
    
    var iconName: String
    var price: String
    
    var body: some View {
        
        ZStack {
            
            HStack {
                
                Image(iconName)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.leading, 2)
            
                Text(price)
                    .foregroundColor(Color("Donate Button Text Color"))
                    .font(Font.custom("SFProRounded", size: 12))
                    .padding(.trailing, 14)
                
            }
            
            Button(action: {}) {
                Rectangle()
                    .foregroundColor(Color("List Card BackgroundColor"))
                    .cornerRadius(10)
            }
            
        }
        
    }
}

struct AboutDonateButton_Previews: PreviewProvider {
    static var previews: some View {
        AboutDonateButton(iconName: "Donate Icon Coffee", price: "$1.99")
    }
}
