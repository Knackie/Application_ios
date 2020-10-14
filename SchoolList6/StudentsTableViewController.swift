//
//  StudentsTableViewController.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {

    var model: StudentModel?;

    override func viewDidLoad() {
        super.viewDidLoad();
        model = StudentModel();

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return model!.getStudentsCount();
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell")
         cell?.textLabel?.text = model!.getStudentAtIndex(indexPath.row);
         return cell!;
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        let dest: EditController = segue.destination as! EditController;
        let row:Int = tableView.indexPathForSelectedRow!.row
        let student: String = model!.getStudentAtIndex(row);
        dest.name = student;
    }
        
    @IBAction func unwindFromCancel( unwindSegue: UIStoryboardSegue) {}
    
    
    @IBAction func unwindFromOK( unwindSegue: UIStoryboardSegue) {
               let sourceViewController: EditController = unwindSegue.source as! EditController;
           let newName: String = sourceViewController.nameField.text!;
        let row:Int = sourceViewController.row!;
        model!.setStudentAtIndex(row, withValue: newName);
}
}
