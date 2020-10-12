//
//  SignUpVC.swift
//  week1_HW
//
//  Created by 이윤진 on 2020/10/11.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign Up"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpBtnTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
