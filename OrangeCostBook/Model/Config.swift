//
//  Config.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/30.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation
import SQLite

class Config {
    
    var name: String!
    var value: String!
    
    init() {
        
    }
    
    init(name: String, value: String) {
        self.name = name
        self.value = value
    }
    
    static func updateConfig(_ config: Config, book: CostBook) -> Bool {
        let configTable = Table("config")
        let nameC = Expression<String>("name")
        let valueC = Expression<String>("value")
        
        do {
            let db = try Connection(book.path)
            let filter = configTable.filter(nameC == config.name)
            try db.run(filter.update(
                valueC <- config.value
            ))
        } catch {
            return false
        }
        return true
    }
    
    static func deleteConfig(_ config: Config, book: CostBook) -> Bool {
        let configTable = Table("config")
        let nameC = Expression<String>("name")
        
        do {
            let db = try Connection(book.path)
            let deleteFilter = configTable.filter(nameC == config.name)
            try db.run(deleteFilter.delete())
        } catch {
            return false
        }
        
        return true
    }
    
    static func insertConfig(_ config: Config, book: CostBook) -> Bool {
        let configTable = Table("config")
        let nameC = Expression<String>("name")
        let valueC = Expression<String>("value")
        
        do {
            let db = try Connection(book.path)
            try db.run(configTable.insert(
                nameC <- config.name,
                valueC <- config.value
            ))
        } catch {
            return false
        }
        return true
    }
    
    static func getConfig(_ name: String, book: CostBook) -> Config? {
        let configTable = Table("config")
        let nameC = Expression<String>("name")
        let valueC = Expression<String>("value")
        
        do {
            let db = try Connection(book.path)
            let query = configTable.filter(nameC == name)
            let bs = try db.prepare(query)
            for b in bs {
                return Config.init(name: name, value: b[valueC])
            }
        } catch {}
        return nil
    }
    
}
