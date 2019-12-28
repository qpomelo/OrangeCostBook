//
//  NewCostView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/7.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

struct NewCostView: View {
    
    @State var inputDescription: String = ""
    @State var inputCost: String = ""
    
    var body: some View {
        
        VStack {
            ZStack {
                
                BlurView(style: .regular)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
                Rectangle()
                    .cornerRadius(25)
                    .foregroundColor(Color("NewCost ModalBackground Color"))
                
                
                VStack {
                    
                    // 导航栏
                    HStack {
                        QUNavigationButton()
                        Spacer()
                        Text("New Cost")
                        Spacer()
                        QUNavigationButton(colorName: "NavigationBar DoneButton BackgroundColor", icon: Image("NavigationBarIcon Done"))
                    }
                    .padding(.top, 22)
                    .padding(.bottom, 22)
                    
                    HStack {
                        Button(action: {}) {
                            Text("$")
                                .font(Font.custom("SF-Pro-Rounded", size: 48))
                                .multilineTextAlignment(.center)
                        }
                        TextField("0.00", text: $inputCost)
                            .font(Font.custom("SF-Pro-Rounded", size: 48))
                            .keyboardType(.decimalPad)
                    }.padding(.top, 70)
                    .multilineTextAlignment(.center)
                    
                    TextField("Placeholder", text: $inputDescription)
                        .multilineTextAlignment(.center)
                    
                    
                    Button(action: { CostTypeSelectView() } ) {
                        CostIconWithTitle(icon: "typeFruit", color: "#E57070", title: "Fruit")
                    }
                    .padding(.top, 38)
                        
                    
                    Spacer()
                    
                }
                .padding(.leading, 22)
                .padding(.trailing, 22)
                
                
            }
            .padding(.leading, 14)
            .padding(.trailing, 14)
        
            
        }// .background(Color.black)
        
    }
}

struct NewCostView_Previews: PreviewProvider {
    static var previews: some View {
        NewCostView()
    }
}
