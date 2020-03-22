//
//  Cost.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/12/28.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

/// 开销
class Cost {
    /// 开销记录 ID
    var costId: UInt = 0
    /// 类别 ID
    var typeId: UInt
    /// 货币类型
    var currency: String
    /// 是否为支出
    var isCost: Bool
    /// 备注
    var description: String
    /// 时间戳
    var timeStampUnix: Int64
    /// 附件地址
    var photoPath: String
    
    init(costId: UInt, typeId: UInt, currency: String, isCost: Bool, description: String, timeStampUnix: Int64, photoPath: String) {
        self.costId = costId
        self.typeId = typeId
        self.currency = currency
        self.isCost = isCost
        self.description = description
        self.timeStampUnix = timeStampUnix
        self.photoPath = photoPath
    }
    
    //MARK: 增
    func insert() -> Bool {
        return false
    }
    
    //MARK: 删
    func delete() -> Bool {
        return false
    }
    
    //MARK: 改
    func update() -> Bool {
        return false
    }
    
    //MARK: 查: 根据开销ID
    func get(costId: UInt) -> Cost? {
        return nil
    }
    
    //MARK: 查: 根据开销类别
    func gets(typeId: UInt, _ type: CostSelectType = .all) -> [Cost] {
        return [Cost]()
    }
    
    //MARK: 查: 获取指定时间范围内的
    func gets(_ startTimeStamp: Int64, _ endTimeStamp: Int64, _ type: CostSelectType = .all) -> [Cost] {
        return [Cost]()
    }
}

/// 开销查询类别
/// - all 全部开销
/// - cost 支出
/// - income 收入
enum CostSelectType {
    case all
    case cost
    case income
}
