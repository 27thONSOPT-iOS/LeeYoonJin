//
//  SignInVC.swift
//  week1_HW
//
//  Created by 이윤진 on 2020/10/11.
//

import UIKit

class SignInVC: UIViewController {

    
    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
   
    var partName: String?
    var memberName: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Sign In"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtnTouched(_ sender: Any) {
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        ad?.partName = self.partTextField.text
        ad?.memberName = "\(self.nameTextField.text ?? "")님 안녕하세요🤗"
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpBtnTouched(_ sender: Any) {

        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SignUpVC") as? SignUpVC else{
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
}

