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
         cell?.textLabel?.text = model!.getStudentAtIndex(i: indexPath.row);
         return cell!;
    }
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        let dest: EditController = segue.destination as! EditController;
        let student: String = (sender as! UITableViewCell).textLabel!.text!;
        dest.name = student;
    }
}
