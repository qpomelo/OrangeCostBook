//
//  SpecialThanksView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/15.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct SpecialThanksView: View {
    var body: some View {
        
        VStack {
            QUNavigationBar(title: "致谢名单")
            Text("橙子记账的诞生离不开以下人员的帮助（排名不分前后）：")
            ScrollView {
                VStack {
                    
                    Text("")
                }
            }
        }.navigationBarTitle(Text("密码保护"))
        .navigationBarHidden(true)
        
    }
}

struct SpecialThanksView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialThanksView()
    }
}
