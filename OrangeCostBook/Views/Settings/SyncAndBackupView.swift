//
//  SyncAndBackupView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/21.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct SyncAndBackupView: View {
    var body: some View {
        
        VStack {
            
            QUNavigationBar(title: "备份与同步")
            
            VStack {
                Button(action: {}) {
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("Button Default Background Color"))
                            .cornerRadius(10)
                        Text("导出账本")
                            .foregroundColor(Color("Button Default FontColor"))
                            .font(Font.custom("PingFangSC-Medium", size: 14))
                            .padding(.top, 16)
                            .padding(.bottom, 16)
                    }.frame(height: 52)
                    
                }
            }.navigationBarTitle(Text("Title"))
            .navigationBarHidden(true)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            Spacer()
            
        }
    }
}

struct SyncAndBackupView_Previews: PreviewProvider {
    static var previews: some View {
        SyncAndBackupView()
    }
}
