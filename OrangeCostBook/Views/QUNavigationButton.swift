//
//  QUNavigationButton.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/16.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct QUNavigationButton: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var colorName: String = "NavigationBar DefaultButton BackgroundColor"
    var icon: Image = Image("BackButton")
    
    var body: some View {
        Button(action: {
            self.mode.wrappedValue.dismiss()
        }) {
            ZStack {
                Circle()
                    .foregroundColor(Color(colorName))
                    .frame(width: 28, height: 28)
                icon
                    .imageScale(.small)
                    .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
            }
        }
    }
    
}

struct QUNavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        QUNavigationButton()
    }
}
