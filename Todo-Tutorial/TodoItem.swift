//
//  TodoItem.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 3/27/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import Foundation

class TodoItem {
    var name = ""
    var note = ""
    var completed = false
    
    init(name: String, note: String) {
        self.name = name
        self.note = note
    }
    
}