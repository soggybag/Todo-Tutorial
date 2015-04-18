//
//  TodoStore.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 4/17/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import Foundation
import Realm

class TodoStore {
    
    var array: RLMResults {
        get {
            return TodoItem.allObjects()
        }
    }
    
    var count: Int {
        get {
            return Int(array.count)
        }
    }
    
    
    func get(index: Int) -> TodoItem {
        return array.objectAtIndex(UInt(index)) as! TodoItem
    }
    
    func addTodo(name: String, note: String) {
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        
        let todo = TodoItem()
        todo.name = name
        todo.note = note
        realm.addObject(todo)
        
        realm.commitWriteTransaction()
    }
    
    
    func remove(todo: TodoItem) {
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        
        realm.deleteObject(todo)
        
        realm.commitWriteTransaction()
    }
    
    
    func removeAt(index: Int) {
        let todo = get(index)
        remove(todo)
    }
    
    
    
    
    // TodoStore.sharedInstance
    class var sharedInstance: TodoStore {
        struct Static {
            static let instance = TodoStore()
        }
        return Static.instance
    }
}
