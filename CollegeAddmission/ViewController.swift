//
//  ViewController.swift
//  CollegeAddmission
//
//  Created by Apple on 24/12/22.
//
/*For the same assignment define one more College struct which will have properties: college name, city, isPrivate, cutOfPercentage.

  Write function ‘checkAddmission’ which will take two struct as
  Input parameter, student and college.

  If a student is passed then Check student marks and cut off marks from both
  parameters if astudent will get admission or not to a given college.

  If the college cutoff is 60 and student has more than 60 percentage the show the result.

  “Pradip Vijay Deore can take admission to Sandip Foundation college”

  You can also use storyboard and view controller for the same.*/

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var studentNameUITextField: UITextField!
    @IBOutlet weak var marksUITextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
       
    @IBOutlet weak var finalResultUILabel: UILabel!
    @IBAction func checkButtonAction(_ sender: Any) {
    let per = Double(marksUITextField.text!)!
    let stud = Student(studentName: studentNameUITextField.text!, studentMarks: per)
    if stud.studentCheckInfo() == true {
            let main = UIStoryboard(name: "Main", bundle: .none)
            let studentDetail = main.instantiateViewController(withIdentifier: "CollegeViewController") as! CollegeViewController
            self.present(studentDetail, animated: true, completion: nil)
         studentDetail.stud = stud

        } else {
           finalResultUILabel.text = "\(stud.studentName) is failed.."
        }
    }
}
