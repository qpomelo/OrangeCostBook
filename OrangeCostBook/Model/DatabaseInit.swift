//
//  DatabaseInit.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/1/31.
//  Copyright © 2019 QPomelo. All rights reserved.
//
//  什么傻逼代码
//  TODO 重构
//

import Foundation
import SQLite

class DBInit {
    
    static let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    
    static func initDb(dbName: String = "main") -> Bool {
        
        let fmanager = FileManager.default
        if !fmanager.fileExists(atPath: "\(path)/\(dbName).db") {
            do {
                let db = try Connection("\(path)/\(dbName).db")
                let configTable = Table("config")
                try db.run(configTable.create{ t in
                    t.column(Expression<String>("name"))
                    t.column(Expression<String>("value"))
                })
            } catch {
                print(error.localizedDescription)
                return false
            }
        }
        
        if !initCostTable() {
            return false
        }
        
        if Config.getConfig("setupDone") == nil {
            _ = Config.insertConfig(Config.init(name: "setupDone", value: "false"))
        }
        
        
        return true
        
    }
    
    static func initCostTable(dbName: String = "main") -> Bool {
        do {
            let db = try Connection("\(path)/\(dbName).db")
            
            if tableExists("costs", db: db) {
                return true;
            }
            
            let costsTable = Table("costs")
            try db.run(costsTable.create{ t in
                t.column(Expression<Int64>("id"), primaryKey: .autoincrement)
                t.column(Expression<Int64>("time"))
                t.column(Expression<Int64>("currencyId"))
                t.column(Expression<Int64>("typeId"))
                t.column(Expression<String>("description"))
                t.column(Expression<Bool>("isOutlay"))
                t.column(Expression<Double>("cost"))
            })
            return true
        } catch {
            print(error.localizedDescription)
            return false;
        }
    }
    
    
    static func tableExists(_ tableName: String, db: Connection) -> Bool{
        do{
            let tables = Table("sqlite_master")
            let type = Expression<String>("type")
            let name = Expression<String>("name")
            print(try db.prepare(tables))
            print(tables.count)
            
            for table in try db.prepare(tables){
                if table[type] == "table" && table[name] == tableName{
                    return true
                }
            }
            return false
        }catch{
            return false
        }
    }
    
    
}
