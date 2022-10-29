//
//  File.swift
//  D&7
//
//  Created by Mac on 29/10/2022.
//

import Foundation
struct StudentsDetails: Identifiable {
    
    let id = UUID()
    var fullName : String
    var Year : Int
    var Age : Int
    
    
    
}

var mohammedstudent = StudentsDetails(fullName: "mohammed", Year: 16, Age: 2006)
var alistudent = StudentsDetails(fullName: "ali", Year: 18, Age: 2004)
var twopacstudent = StudentsDetails(fullName:"twopac" , Year: 1999, Age: 23)

