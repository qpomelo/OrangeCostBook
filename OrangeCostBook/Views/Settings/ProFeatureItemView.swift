//
//  ProFeatureItemView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2020/3/25.
//  Copyright © 2020 QPomelo. All rights reserved.
//

import SwiftUI

struct ProFeatureItemView: View {
    
    @State var icon = Image(systemName: "")
    @State var title: String
    @State var subtitle: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            icon
                .foregroundColor(Color("Main Theme Color"))
                .imageScale(.large)
                .frame(width: 24, height: 24)
                .padding(.leading, 24)
            
            VStack(spacing: 0) {
                HStack {
                    Text(title)
                        .font(Font.custom("PingFangSC-Medium", size: 13))
                        .opacity(0.6)
                    Spacer()
                }
                HStack {
                    Text(subtitle)
                        .font(Font.custom("PingFangSC", size: 13))
                        .opacity(0.6)
                    Spacer()
                }
            }
            .padding(.leading, 12)
        }
        .frame(height: 46)
    }
}
