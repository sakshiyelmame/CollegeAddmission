//
//  FinalResultViewController.swift
//  CollegeAddmission
//
//  Created by Apple on 30/12/22.
//

import UIKit

class FinalResultViewController: UIViewController {
    var stud : Student?
    var college : CollegeAddmission?
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let stud = stud, let college = college{
            if college.CheckStudent(percentage: stud.studentMarks) == true{
                let result = "\(stud.studentName) can take addmissionn to \(college.collegeName) college"
                finalUILabel.text = result
                finalUILabel.textColor = .green
            }
            else {
                let result = "\(stud.studentName) can take addmission to \(college.collegeName) college"
                finalUILabel.text = result
                finalUILabel.textColor = .red
                
            }
        }else{
            finalUILabel.text = "no data found...!"
        }
            
    }

    @IBOutlet weak var finalUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
