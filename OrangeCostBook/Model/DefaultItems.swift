//
//  DefaultItems.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/12/28.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

struct DefaultJson: Codable {
    
    var types: [CostTypesDJ]
    
    var currencies: [CurrenciesDJ]
}

/// App 内置账单类别
struct CostTypesDJ: Codable, CostTypeP {
    /// 类别 ID
    var id: UInt
    /// 十六位进制的颜色代码
    var color: String
    /// 图标名称(Assets.xcassets) / 图标位置(/var/mobile/容器/Documents)
    var icon: String
    /// 是否为内置类型
    var internalType: Bool = true
    /// 所属组 (用户自定义的为 "CostType_GroupCustom")
    var group: String
    /// 类别名称
    var string: String
}

/// App 内置货币类型
struct CurrenciesDJ: Codable {
    /// 货币 ID
    var id: UInt
    /// 货币名(例: CNY)
    var name: String
    /// 显示名称(例: Currency_CNY)
    var title: String
    /// 对应国家 Emoji
    var emoji: String
    /// 货币符号(例: 🇨🇳)
    var symbol: String
}
