//
//  ViewController.swift
//  week1_HW
//
//  Created by 이윤진 on 2020/10/11.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    
    var partName: String?
    var memberName: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        let ad = UIApplication.shared.delegate as? AppDelegate
        if let part = ad?.partName{
            partLabel.text = part
        }
        if let name = ad?.memberName{
            introLabel.text = name
        }
    }
    
    @IBAction func touchUpMove(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "SignInNavVC")  else {
            return
        }
        dvc.modalPresentationStyle = .fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
    
}

extension MainVC{
    
//    func setLabel(){
//        partLabel.text = partName
//        introLabel.text = memberName
//    }
    
}
