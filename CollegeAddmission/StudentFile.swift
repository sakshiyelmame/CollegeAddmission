//
//  StudentFile.swift
//  CollegeAddmission
//
//  Created by Apple on 30/12/22.
//

import Foundation
struct Student{
    var studentName : String
    var studentMarks : Double
    
    func studentCheckInfo() -> Bool {
        if studentMarks >= 35{
            return true
        }
        else{
            return false
        }
    }
}
