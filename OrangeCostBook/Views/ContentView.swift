//
//  ContentView.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/6.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import SwiftUI

var HomeView: ContentView!

struct ContentView: View {
    
    @State private var newCostViewShowing: Bool = false
    @State var showNewCostViewMask: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                // 背景颜色
                Color("Default View Background Color")
                    .edgesIgnoringSafeArea(.all)
                
                
                ScrollView {
                    
                    // 今日概览
                    HStack(alignment: .center) {
                        
                        VStack(alignment: .leading, spacing: 0.0) {
                            
                            Text("8月15日")
                                .font(Font.custom("PingFangSC-Medium", size: 24))
                                .opacity(0.8)
                            
                            Text("支出 ¥100.00 收入 ¥100.00")
                                .font(Font.custom("PingFangSC-Medium", size: 16))
                                .multilineTextAlignment(.leading)
                                .lineLimit(1)
                                .opacity(0.4)
                            
                        }
                        
                        Spacer()
                        
                    }
                    .padding(.leading, 42)
                    .padding(.top, 64)
                    
                    
                    // 账单列表
                    ZStack {
                        Path{ path in
                            // path.move(to: CGPoint(x: 20, y: 300))
                            // path.addLine(to: CGPoint(x: 200, y: 300))
                        }
                        .stroke(style: StrokeStyle( lineWidth: 1, dash: [6]))
                        .foregroundColor(Color("Default DashLine Color"))
                        
                        VStack(spacing: 0) {
                            CostItem(icon: "typeMetro", color: "#4A90E2", cost: 3, moneySymbol: "¥", spend: true, description: "地铁")
                                
                            CostItem(icon: "typeDaily", color: "#75B1CD", cost: 12, moneySymbol: "¥", spend: true, description: "牙刷")
                                .padding(.all, 0)
                            
                            Image("Test Ad")
                            
                        }.padding(.top, 16)
                        
                    }
                }
                .padding(.all, 0)
                
                // 添加按钮
                VStack(alignment: .center) {
                    Spacer()
                    Button(action: {
                        // self.newCostViewShowing = true
                        
                         // "ClassicViews" "newCostVC"
                        self.showNewCostViewMask = true
                        self.showUIKitView(fromStoryboard: "ClassicViews", viewIdentifier: "newCostVC")
                    }) {
                        
                        ZStack {
                            Circle()
                                .foregroundColor(Color("NewBill Button Background Color"))
                                .frame(width: 56, height: 56)
                            Image("NewBill Icon")
                        }.padding(.bottom, 48)
                    }/*.sheet(isPresented: self.$newCostViewShowing) {
                        NewCostView()
                        // CostTypeSelectView()
                    }*/
                }
                
                // 顶部按钮
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        // 设置按钮
                        NavigationLink(destination: SettingsView())  {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("NavigationBar DefaultButton BackgroundColor"))
                                    .frame(width: 28, height: 28)
                                Image("NavigationBarIcon Gear")
                                    .imageScale(.small)
                                    .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
                            }
                        }
                        
                        // 账本按钮
                        NavigationLink(destination: SettingsView())  {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("NavigationBar DefaultButton BackgroundColor"))
                                    .frame(width: 28, height: 28)
                                Image("NavigationBarIcon Book")
                                    .imageScale(.small)
                                    .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
                            }
                        }.padding(.leading, 8)
                        
                        // 日期按钮
                        NavigationLink(destination: SettingsView())  {
                            ZStack {
                                Circle()
                                    .foregroundColor(Color("NavigationBar DefaultButton BackgroundColor"))
                                    .frame(width: 28, height: 28)
                                Image("NavigationBarIcon Calendar")
                                    .imageScale(.small)
                                    .foregroundColor(Color("NavigationBar DefaultButton IconColor"))
                            }
                        }.padding(.leading, 8).padding(.trailing, 30)
                        
                    }
                    .padding(.top, 8)
                    
                    Spacer()
                }
                
                if self.showNewCostViewMask {
                    Rectangle()
                        .edgesIgnoringSafeArea(.all)
                        .foregroundColor(Color("NewCost Background MaskColor"))
                }
                
                
                
            }
            .navigationBarTitle(Text("Title"))
            .navigationBarHidden(true)
            
        }
        .onAppear(perform: appear)
        
        
    }

    
    private func appear() {
        HomeView = self
        self.showNewCostViewMask = false
        
    }
    
    func ncvCallback() {
        self.showNewCostViewMask = false
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
