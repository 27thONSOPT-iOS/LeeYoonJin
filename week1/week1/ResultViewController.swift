//
//  ResultViewController.swift
//  week1
//
//  Created by 이윤진 on 2020/10/10.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var updateStateLabel: UILabel!
    @IBOutlet weak var updateIntervalLabel: UILabel!
    
    var email: String?
    var isAutoUpdate: Bool?
    var updateInterval: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabel()
    }
    
    @IBAction func touchUpBack(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

}

extension ResultViewController{
    func setLabel(){
        
        if let email = self.email,
           let isAutoUpdate = self.isAutoUpdate,
           let updateInterval = self.updateInterval {
            
            // Label에 값을 대입
            self.emailLabel.text = email
            self.emailLabel.sizeToFit()
            
            self.updateStateLabel.text = isAutoUpdate ? "On" : "Off"
            self.updateIntervalLabel.text = "\(updateInterval)분"
        }
    }
}
