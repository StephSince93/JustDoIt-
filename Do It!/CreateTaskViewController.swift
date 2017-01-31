//
//  CreateTaskViewController.swift
//  Do It!
//
//  Created by Stephen Romero on 1/30/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNametextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    //reference back to TasksViewController
    var previousVC = TasksViewController()
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addtapped(_ sender: Any)
    {
        //create a task from the outlet information
        let task = Task()
        task.name = taskNametextField.text!
        task.important = importantSwitch.isOn
        //add new task to array in previous viewController
        previousVC.tasks.append(task)
        //refreshes the table and adds to the list
        previousVC.tableView.reloadData()
        //moves back to the previous view controller
        navigationController!.popViewController(animated: true)
        
        
    }
   
    }
