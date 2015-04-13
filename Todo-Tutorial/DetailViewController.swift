//
//  DetailViewController.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 4/12/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var todo: TodoItem!
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var noteText: UITextField!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        todo.name = nameText.text
        todo.note = noteText.text
        todo.completed = completedSwitch.on
        navigationController?.popViewControllerAnimated(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        nameText.text = todo.name
        noteText.text = todo.note
        completedSwitch.on = todo.completed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
