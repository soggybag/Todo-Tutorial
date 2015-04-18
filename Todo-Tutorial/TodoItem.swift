//
//  TodoItem.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 3/27/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import Foundation
import Realm

class TodoItem: RLMObject {
    dynamic var name = ""
    dynamic var note = ""
    dynamic var completed = false
}