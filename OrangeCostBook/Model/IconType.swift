//
//  IconType.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/12/14.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

/// 图标类型
enum IconType: String, Codable {
    /// 包含在程序包 (CostBook.app) 内的
    case inBundle = "inBundle"
    /// 外部的 (/var/Containers/xxxxxx/Documents 下存储的)
    case external = "external"
}
