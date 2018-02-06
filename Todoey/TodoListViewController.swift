//
//  ViewController.swift
//  Todoey
//
//  Created by Alan Coman on 2/4/18.
//  Copyright © 2018 Alan Coman. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController  {
    
    let itemArray = ["Find Mike", "Buy Egos", "Destroy Domorg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    // MARK - Tableview DataSource methods.
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text  = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true )
    }
    
    //MARK - Add New Items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        //let alert = UIAlertController
    }
    
}

