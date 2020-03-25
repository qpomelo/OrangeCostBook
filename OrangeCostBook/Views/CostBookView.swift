//
//  CostBookView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2020/3/22.
//  Copyright © 2020 QPomelo. All rights reserved.
//

import SwiftUI

struct CostBookView: View {
    var body: some View {
        
        ZStack {
            VStack {
                QUNavigationBar(title: "账本")
                ScrollView {
                    
                    Spacer()
                }
            }
            
            
            
        }
        .navigationBarTitle(Text("Title")) // Add this line
        .navigationBarHidden(true)
        
    }
}

struct CostBookView_Previews: PreviewProvider {
    static var previews: some View {
        Text("No Preview")
    }
}
