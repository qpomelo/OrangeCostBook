//
//  CostBook.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/30.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

/// 账本模型
class CostBook {
    
    /// 账本 ID
    var bookId: UInt
    /// 账本名称
    var title: String
    /// 账本封面颜色 (十六进制RGB)
    var colorHexStr: String
    /// 账本基准货币 (如 CNY, USD, HKD, JPY)
    var defaultCurrency: String
    
    /// 初始化函数
    init(bookId: UInt, title: String, colorHexStr: String, defaultCurrency: String) {
        self.bookId = bookId
        self.title = title
        self.colorHexStr = colorHexStr
        self.defaultCurrency = defaultCurrency
    }
    
    //MARK: 增加
    func insert() -> Bool {
        return false
    }
    
    //MARK: 删除
    func delete() -> Bool {
        return false
    }
    
    //MARK: 更改
    func update() -> Bool {
        return false
    }
    
    //MARK: 查: 根据账本ID
    static func get(bookId: UInt) -> CostBook? {
        return nil
    }
    
    //MARK: 查: 获取全部
    static func gets() -> [CostBook] {
        return [CostBook]()
    }
    
}
