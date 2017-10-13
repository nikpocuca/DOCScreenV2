//
//  TaskTableViewController.swift
//  DOCScreenV2
//
//  Created by Nik on 2017-10-02.
//  Copyright © 2017 Nik. All rights reserved.
//

import UIKit
import ResearchKit

class TaskTableViewController: UITableViewController {

    
    
    var docEntries = [DocEntry]()
    
    
    
    private func loadTasks() {
        
        guard let task1 = DocEntry(TaskName: "Profile", Image: #imageLiteral(resourceName: "profile"), CompleteString: "", Task: ProfileTask)
            else { fatalError("unable to create docEntry") }
        
        
        guard let task2 = DocEntry(TaskName: "Memory", Image: #imageLiteral(resourceName: "memory"), CompleteString: "", Task: MemoryTask)
            else { fatalError("unable to create docEntry") }

        guard let task3 = DocEntry(TaskName: "Mood", Image: #imageLiteral(resourceName: "mood"), CompleteString: "", Task: MoodTask)
            else { fatalError("unable to create docEntry") }

        guard let task4 = DocEntry(TaskName: "Sleep", Image: #imageLiteral(resourceName: "sleep"), CompleteString: "", Task: SleepTask)
            else { fatalError("unable to create docEntry") }

        guard let task5 = DocEntry(TaskName: "Clock", Image: #imageLiteral(resourceName: "clock"), CompleteString: "", Task: ClockTask)
            else { fatalError("unable to create docEntry") }

        guard let task6 = DocEntry(TaskName: "Abstraction", Image: #imageLiteral(resourceName: "abstraction"), CompleteString: "", Task: AbstractionTask)
             else { fatalError("unable to create docEntry") }
        
        
        docEntries = [task1,task2,task3,task4,task5,task6];
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadTasks()
       
        UIView.appearance().tintColor = UIColor.docRed()

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return docEntries.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "TaskTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TaskTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TaskTableViewCell.")
        }
        
        let task = docEntries[indexPath.row]
        
        
        cell.taskNameOut.text = task.taskName
        cell.taskImageOut.image = task.image
        
        
        let selectBackground = UIView()
        
        selectBackground.backgroundColor = UIColor.init(red: 237/255, green: 34/255, blue: 38/255, alpha: 1)
        
        cell.selectedBackgroundView = selectBackground
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // This is what its going to select.
        
  
        let currentCell = tableView.cellForRow(at: indexPath) as! TaskTableViewCell
    
    
        currentCell.taskNameOut.textColor = UIColor.white

        let runTask = docEntries[indexPath.row].taskIdentifier
        
        let taskViewController = ORKTaskViewController(task: runTask, taskRun: nil)
            
            taskViewController.delegate = self
        
        
        present(taskViewController, animated: true, completion: nil)
        
      
      tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        currentCell.taskNameOut.textColor = UIColor.red
        
     }
    
    


}

extension TaskTableViewController:  ORKTaskViewControllerDelegate{
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        //Handle results with taskViewController.result
        taskViewController.dismiss(animated: true, completion: nil)
        }
    
}
