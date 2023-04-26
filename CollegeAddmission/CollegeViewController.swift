//
//  CollegeViewController.swift
//  CollegeAddmission
//
//  Created by Apple on 30/12/22.
//

import UIKit

class CollegeViewController: UIViewController {
    var stud : Student?


    @IBOutlet weak var collegeNameUITextField: UITextField!
    @IBOutlet weak var cityUITextField: UITextField!
    @IBOutlet weak var cutOffPercentageUITextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPageButtonAction(_ sender: Any) {
        let cutOffpercentage = Double(cutOffPercentageUITextField.text!)!
        let college = CollegeAddmission(collegeName: collegeNameUITextField.text!, city: cityUITextField.text!, cutOffPercentage: cutOffpercentage)
            let main = UIStoryboard(name: "Main", bundle: .none)
            let finalResult = main.instantiateViewController(withIdentifier: "FinalResultViewController") as! FinalResultViewController
        finalResult.college = college
        finalResult.stud = stud
            self.present(finalResult, animated: true, completion: nil)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
    
}
