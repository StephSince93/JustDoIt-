//
//  CompleteTaskViewController.swift
//  Do It!
//
//  Created by Stephen Romero on 1/31/17.
//  Copyright © 2017 Stephen Romero. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTabel: UILabel!
    var task : Task? = nil
//   var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important
        {
            taskTabel.text = "❗️\(task!.name!)"
        }
        else
        {
            taskTabel.text = task!.name!
        }


        // Do any additional setup after loading the view.
    }
    @IBAction func completeTapped(_ sender: Any) {
        
 //       previousVC.tasks.remove(at: previousVC.selectedIndex)
        //refreshes the table and adds to the list
 //       previousVC.tableView.reloadData()
        //moves back to the previous view controller
         let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)

    }

}
