//
//  CostBook.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/30.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation

class CostBook {
    
    var name: String!
    var path: String!
    
    static var main: CostBook = CostBook("main")
    
    init(_ name: String) {
        self.name = name
        self.path = "\(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!)/\(name).db"
    }
    
    init(_ name: String, path: String) {
        self.name = name
        self.path = path
    }
    
}
