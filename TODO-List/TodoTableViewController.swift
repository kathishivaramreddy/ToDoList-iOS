//
//  TodoTableViewController.swift
//  TODO-List
//
//  Created by apple on 5/2/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class TodoTableViewController: UITableViewController {

    var toDos = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let currentToDo =  toDos[indexPath.row]
    
        if currentToDo.important {
            cell.textLabel?.text = "❗️" + currentToDo.name
        }else {
            cell.textLabel?.text = currentToDo.name
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let todoAddVC = segue.destination as? ToDoAddViewController {
            todoAddVC.todoTableVC = self
        }
        if let showDetailsVC = segue.destination as? showToDoDetailsViewController {
            if let toDo = (sender as? ToDo) {
                showDetailsVC.toDo = toDo
                showDetailsVC.todoTableVC = self
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = toDos[indexPath.row]
        performSegue(withIdentifier: "toDoDetails", sender: todo)
    }
    
}
