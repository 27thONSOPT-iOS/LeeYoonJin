//
//  ViewController.swift
//  week2_HW
//
//  Created by 이윤진 on 2020/10/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var listScrollView: UIScrollView!
    @IBOutlet weak var moveTopBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNaviBar()
        moveTopBtn.isHidden = true
        listScrollView.delegate = self
        moveTopBtn.layer.cornerRadius = moveTopBtn.frame.width/2
    }
   
    @IBAction func moveTop(_ sender: Any) {

        listScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
    
    func setNaviBar(){

        self.navigationController?.navigationBar.barTintColor = .black
        
    }

}

extension ViewController: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if listScrollView.contentOffset.y > 700{
            print("state: \(listScrollView.contentOffset.y)")
            moveTopBtn.isHidden = false
        }else {
            moveTopBtn.isHidden = true
        }
    }
}

