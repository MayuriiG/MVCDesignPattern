//
//  ViewController.swift
//  MVC_model1
//
//  Created by Mayurii Gajbhiye on 21/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//....................................!!........................

//Notes :-

//1)model - view has no direct connection
//2)Controller is the mediator betn 2 

import UIKit

class ViewController: UIViewController {
    
    var students:[Student] = []
    
    
    @IBOutlet  weak var studentList:UITableView!        

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func addStudent(_ sender: Any) {
        
        
    let newStudent = Student(nameOfStudent: "Students👩🏻‍🚀 \(students.count + 1)", addOfStudent : "🏚 \(students.count + 1)")
        
        students.append(newStudent)
        studentList.reloadData()
    }
    
}



extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = students[indexPath.row].name
        cell?.detailTextLabel!.text = students[indexPath.row].address
        
        
        return cell ?? UITableViewCell()
               //if cell is empty
        
    }
    
}

 
//go to storyboard and change the type  = Subtitle
//GIVE IDENTIFIER IN THE tableview cell_identifier row =
