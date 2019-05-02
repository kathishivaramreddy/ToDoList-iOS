//
//  ToDoAddViewController.swift
//  TODO-List
//
//  Created by apple on 5/2/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class ToDoAddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var todoTableVC: TodoTableViewController?
    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBOutlet weak var switchImportance: UISwitch!
    

    @IBAction func addToDoItem(_ sender: UIButton) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            var newToDo = ToDoList(context: context)
            if let name = todoTextField.text {
                newToDo.name = name
            }
            newToDo.important = switchImportance.isOn
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
}
