//
//  showToDoDetailsViewController.swift
//  TODO-List
//
//  Created by apple on 5/2/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class showToDoDetailsViewController: UIViewController {

    var toDo :ToDoList?
    var todoTableVC: TodoTableViewController?
    
    @IBOutlet weak var showToDo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let toDo = toDo {
            title = toDo.name
            if toDo.important {
                showToDo.text = "❗️" + toDo.name!
            }else {
                showToDo.text = toDo.name
            }
        }
        showToDo.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
    }
    
    @IBAction func completeToDo(_ sender: UIButton) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let toDoObject = toDo  {
                context.delete(toDoObject)
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
                todoTableVC?.tableView.reloadData()
                navigationController?.popViewController(animated: true)
            }
        }
    }
}
