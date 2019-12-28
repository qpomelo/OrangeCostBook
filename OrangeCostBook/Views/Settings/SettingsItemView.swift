//
//  SettingsItemView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct SettingsItemView: View {
    
    @State var iconName: String
    @State var title: String
    
    var body: some View {
        
        
        HStack {
            
            Image(iconName)
                .padding(.leading, 22)
            
            Text(title)
                .font(Font.custom("PingFangSC", size: 14))
                .foregroundColor(Color("Settings Link TextColor"))
                .padding(.leading, 18)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(Color("List Card LinkColor"))
                .imageScale(.small)
                .frame(width: 12, height: 12)
                .padding(.trailing, 24)
            
        }.frame(height: 52)
        
    }
}

struct SettingsItemView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsItemView(iconName: "SettingsItemIconCloud", title: "备份与同步")
    }
}
