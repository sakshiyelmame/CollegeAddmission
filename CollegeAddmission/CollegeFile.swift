//
//  CollegeFile.swift
//  CollegeAddmission
//
//  Created by Apple on 30/12/22.
//

import Foundation
struct CollegeAddmission{
    let collegeName : String
    let city : String
    let cutOffPercentage : Double
    
    func CheckStudent(percentage:Double) -> Bool{
        if percentage >= cutOffPercentage{
            return true
        }else{
            return false
        }
    }
}
