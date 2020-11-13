//
//  MainTabBarController.swift
//  week3_HW_Storyboard
//
//  Created by 이윤진 on 2020/11/13.
//

import UIKit

class MainTabBarController: UITabBarController {

    // 좌측뷰 : IntroVC - LoginVC
    // 우측콜렉션뷰 : VC
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        UITabBar.appearance().tintColor = UIColor.systemYellow
        // Do any additional setup after loading the view.
    }
    
    func setTabBar(){
        guard let IntroVC = self.storyboard?.instantiateViewController(identifier: "IntroVC") as? IntroVC,
              let ViewController = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController
        else {
            return
        }
        
        IntroVC.tabBarItem.title = "Home"
        IntroVC.tabBarItem.image = UIImage(systemName: "house")
        IntroVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        ViewController.tabBarItem.title = "SOPT+WORKING"
        ViewController.tabBarItem.image = UIImage(systemName: "person")
        ViewController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        setViewControllers([IntroVC, ViewController], animated: true)
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
