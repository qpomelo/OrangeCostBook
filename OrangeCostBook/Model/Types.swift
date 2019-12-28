//
//  Types.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/13.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

/// 账单类别(接口定义)
protocol CostTypeP: Codable {
    /// 类别 ID
    var id: UInt { get set }
    /// 十六位进制的颜色代码
    var color: String { get set }
    /// 图标名称(Assets.xcassets) / 图标位置(/var/mobile/容器/Documents)
    var icon: String { get set }
    /// 是否为内置类型
    var internalType: Bool { get set }
    /// 所属组 (用户自定义的为 "CostType_GroupCustom")
    var group: String { get set }
    /// 类别名称
    var string: String { get set }
}

/// 用户创建的类型 (UG: User Generated)
class CostTypeUG: CostTypeP {
    /// 已经加载到内存的类别
    public static var shared: [CostTypeUG] = [CostTypeUG]()
    /// 类型 id (UG类型从10000开始)
    var id: UInt
    /// 十六位进制的颜色代码
    var color: String
    /// 图标文件的名字（存放于 App Document 目录下，需包含拓展名，例子: 52dacce9-52ef-4f51-8d91-ff2e7398e7cd.png）
    var icon: String
    /// 是否是内置类型
    var internalType: Bool = false
    /// 所属组 (用户自定义的为 "CostType_GroupCustom")
    var group: String = "CostType_GroupCustom".localized
    /// 类别名称
    var string: String
    
    /// 在内存中直接生成一条类型（用于稍后创建记录）
    init(id: UInt, hexColor: String, icon: String, string: String) {
        self.id = id
        self.color = hexColor
        self.icon = icon
        self.string = string
    }

    //MARK: 从数据库中根据 id 取得一条类型
    public static func get(id: Int) -> CostTypeUG? {
        
        return nil
    }
    
    //MARK: 获取全部用户自定义类型(ID >= 10000)
    public static func gets() -> [CostTypeUG] {
        
        return [CostTypeUG]()
    }
    
    //MARK: 插入一个类型
    public func insert() -> Bool {
        
        return false
    }
    
    //MARK: 删除一个类型
    /// 从数据库中删除此类型 **需要先确定该类型没有任何账单记录 (使用 checkItCanDelete() -> Bool 方法 )**
    public func delete() -> Bool {
        
        return false
    }
    
    //MARK: 检查此类型是否可以删除
    //运行 "SELECT COUNT() FROM `Cost` WHERE `typeId` = \(self.id)" 是否不等于 0 决定
    //id 小于 10000 的为内置类型, 不可删除
    public func checkItCanDelete() -> Bool {
        
        return false
    }
    
}
