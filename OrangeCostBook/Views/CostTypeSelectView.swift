//
//  CostTypeSelectView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/16.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

var CostTypeSelectViewHostingVC: UIHostingController<CostTypeSelectView>?

struct CostTypeSelectView: View {
    
    @State var groups: [CostTypeP] = [CostTypeP]()
    
    var body: some View {
        
        ZStack {
            
            BlurView(style: .regular)
                .cornerRadius(25)
                .padding(.top, 24)
                .padding(.bottom, -49)
            
            Rectangle()
                .foregroundColor(Color("NewCost ModalBackground Color"))
                .cornerRadius(25)
                .padding(.top, 24)
                .padding(.bottom, -49)
            
            VStack {
                
                Rectangle()
                    .opacity(0)
                    .frame(height: 24)
                
                // 导航栏
                ZStack {
                    HStack(alignment: .center) {
                        
                        Button(action: {
                            CostTypeSelectViewHostingVC?.dismiss(animated: true)
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("NavigationBar DefaultButton BackgroundColor"))
                                    .frame(width: 28, height: 28)
                                Image(systemName: "arrow.left")
                                    .imageScale(.small)
                                    .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
                            }
                        }
                        
                        Text("类别")
                            .padding(.leading, 16)
                            .font(Font.custom("PingFangSC-Medium", size: 16))
                        
                        Spacer()
                        
                    }.padding(.leading, 30)
                        .padding(.trailing, 30)
                }.frame(height: 52)
                
                ScrollView {
                    VStack {
                        ForEach(groups, id: \.id) { group in
                            VStack {
                                HStack {
                                    Text(group.group.localized)
                                        .font(Font.custom("PingFangSC-Medium", size: 12))
                                        .foregroundColor(Color("List Card GroupTitle FontColor"))
                                    Spacer()
                                }
                                .padding(.bottom, 8)
                                
                                ScrollView(.horizontal, content: {
                                    Text("test")
                                })
                                    .padding(.bottom, 8)
                                
                            }
                        }
                    }
                    
                }.padding(.leading, 30)
            }.onAppear(perform: viewDidAppear)
        }
    }
    
    private func viewDidAppear() {
        self.groups = CostType.shared
    }
}

struct CostTypeSelectView_Previews: PreviewProvider {
    static var previews: some View {
        CostTypeSelectView()
    }
}


