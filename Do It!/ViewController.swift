//
//  ViewController.swift
//  Do It!
//
//  Created by Stephen Romero on 1/30/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //adjusts the table to display on the whole screen and have the ability to scroll
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    //function that allows number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important
        {
            cell.textLabel?.text = "❗️\(task.name)"
        }
        else
        {
         cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [Task]
    {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy cheese"
        task2.important = true

        let task3 = Task()
        task3.name = "Mow the lawn"
        task3.important = false

        return [task1, task2, task3]
        
    }
    //plus sign button on the table view
    @IBAction func plusTapped(_ sender: Any)
    {
        //segue name
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
   }

