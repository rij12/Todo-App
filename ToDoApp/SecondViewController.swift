//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Richard Price-Jones on 25/05/2017.
//  Copyright © 2017 Richard Price-Jones. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        
        if (input.text != ""){
            list.append(input.text!)
            input.text = ""
        }
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

