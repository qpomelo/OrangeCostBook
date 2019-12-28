//
//  QUNavigationBar.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct QUNavigationBar: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var title: String
    var showBackButton: Bool = true
    
    var body: some View {
        
        ZStack {
            
            HStack(alignment: .center) {
                
                QUNavigationButton()
                
                Text(title)
                    .padding(.leading, (showBackButton ? 22 : 0))
                    .font(Font.custom("PingFangSC-Medium", size: 16))
                
                Spacer()
                
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
            
            
            
        }
        .frame(height: 52)
        
    }
}

struct QUNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        QUNavigationBar(title: "Page")
    }
}
