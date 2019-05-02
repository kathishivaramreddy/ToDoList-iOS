//
//  showToDoDetailsViewController.swift
//  TODO-List
//
//  Created by apple on 5/2/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class showToDoDetailsViewController: UIViewController {

     var toDo = ToDo()
    
    @IBOutlet weak var showToDo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = toDo.name
        showToDo.text = toDo.name
        showToDo.textColor = #colorLiteral(red: 0.1700106263, green: 0.72013098, blue: 0.7984477282, alpha: 1)
    }
    

}
