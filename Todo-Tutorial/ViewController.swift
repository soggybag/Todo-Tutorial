//
//  ViewController.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 3/27/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddTodoViewControllerDelegate {

    var array = [TodoItem]()
    
    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: Add Todo Delegate Methods
    
    func addNew(todo: TodoItem) {
        array.append(todo)
        tableView.reloadData()
    }
    
    
    // MARK: Segue Methods
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddTodoSegue" {
            let destVC = segue.destinationViewController as AddTodoViewController
            destVC.delegate = self
        }
    }
    
    
    // MARK: Table View Delegate Methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        let color3 = UIColor(white: 146/255, alpha: 1)
        let color5 = UIColor(white: 116/255, alpha: 1)
        
        cell.textLabel?.textColor = color3
        cell.detailTextLabel?.textColor = color5
        
        let todo = array[indexPath.row]
        cell.textLabel?.text = todo.name
        cell.detailTextLabel?.text = todo.note
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            array.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        }
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

