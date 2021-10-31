//
//  Item.swift
//  ToDoList
//
//  Created by lollipop on 2021/10/14.
//

import Foundation

struct Item : Identifiable, Codable{
    var id = UUID()
    var title =  "新提醒事项"
    var isDone = false
    
    
//    func json() throws -> Data {
//        return try JSONEncoder().encode(self)
//    }
}
