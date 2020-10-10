//
//  ViewController.swift
//  week1
//
//  Created by 이윤진 on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sayHelloLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpClick(_ sender: Any) {
        
        sayHelloLabel.text = "Hello ONSOPT"
        sayHelloLabel.sizeToFit() // 라벨 사이즈 맞게 조절해주는 메소드
        
    }
    
    @IBAction func touchUpMove(_ sender: Any) {
        
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "YellowViewController") else{
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
//        self.present(dvc, animated: true, completion: nil)
    }

    }


