//
//  ViewController.swift
//  Actions
//
//  Created by Tushar Chhabra on 2018-03-07.
//  Copyright © 2018 Tushar Chhabra. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    var itemArray = ["Talk to Tapsi Di", "Talk to Mamma Papa", "Talk to Dada Dadi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK: - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    //MARK: - Add new items
    
    @IBAction func addButtonPressed(_ sender: Any) {

        let addItemsAlert = UIAlertController(title: "Add new action", message: "", preferredStyle: .alert)
        
        var textField = UITextField()
        addItemsAlert.addTextField { (alertTextField) in
            alertTextField.placeholder = "I want to..."
            textField = alertTextField
        }
        
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
        }
        addItemsAlert.addAction(action)
        
        present(addItemsAlert, animated: true, completion: nil)
    }
}

