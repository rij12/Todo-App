//
//  FirstViewController.swift
//  ToDoApp
//
//  Created by Richard Price-Jones on 25/05/2017.
//  Copyright © 2017 Richard Price-Jones. All rights reserved.
//

import UIKit


//Golbal List 
var list = ["learn swift", "get good idea", "???", "profit"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var myTableView: UITableView!
    
    
    
    //Populate the table view 
    
    //@return number of row for table view
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell( style: UITableViewCellStyle.default, reuseIdentifier:"cell")
        cell.textLabel?.text = list[indexPath.row]
        return (cell)
    }
    
    // After a row has the minus or plus button invoked (based on the UITableViewCellEditingStyle for the cell), the dataSource must commit the change
    // Not called for edit actions using UITableViewRowAction - the action's handler will be invoked instead
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

