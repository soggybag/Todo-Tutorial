//
//  ViewController.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 3/27/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var array = [TodoItem]()
    
    // MARK: Table View Delegate Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        let todo = array[indexPath.row]
        cell.textLabel?.text = todo.name
        cell.detailTextLabel?.text = todo.note
        
        return cell
    }
    
    // MARK: View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        array.append(TodoItem(name: "Hello", note: "World"))
        array.append(TodoItem(name: "Foo", note: "Bar"))
        array.append(TodoItem(name: "Eat", note: "Lunch"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

