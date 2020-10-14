//
//  StudentModel.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

class StudentModel {
    var students = ["Loin de chez vous","Cher","Mal noté"];
    
    
    
    func getStudentAtIndex(_ index: Int) -> String {
        return students[index];
    }
    
    func setStudentAtIndex(_ index: Int, withValue : String){
        students[index] = withValue;
    }
    
    func getStudentsCount() -> Int {
        return students.count;
    }
}
