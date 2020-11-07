//
//  AnimationTestVC.swift
//  week4
//
//  Created by 이윤진 on 2020/11/07.
//

import UIKit

class AnimationTestVC: UIViewController {
    
    @IBOutlet weak var sparklesImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startBtnTouched(_ sender: Any) {
        
        //        UIView.animate(withDuration: 3.0, animations: {
        //
        //            self.sparklesImageView.alpha = 0}){
        //            finished in
        //            //self.sparklesImageView.alpha = 1
        //            // 알파값이 1이면 보이는 것, 0이면 투명한 상태
        //            // completion의 자리, 애니메이션이 완료되고 수행되는 목록
        //            // 알파값 0이었다가 1로 변경
        //            // completion 블록 내에서도 애니메이션 동작 설정 가능하다
        //            UIView.animate(withDuration: 1.0){
        //                self.sparklesImageView.alpha = 1 // 앞 애니메이션 동작 끝난 후 다음 애니메이션 지정
        //            }
        //        }
        
        //MARK: - CGAffineTransform의 조절, 제약조건에 상관없이 이동시킨다
        //        UIView.animate(withDuration: 1.0,
        //
        //                       delay: 0) {
        //
        //            self.sparklesImageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        //        }
        // duration : 애니메이션이 일어나는 시간, animations: animation block(수행되는 애니메이션에 대한 정보)
        // MARK: - CGAffineTransform의 회전
        //        UIView.animate(withDuration: 1.0,
        //
        //                       delay: 0) {
        //
        //            self.sparklesImageView.transform = CGAffineTransform(rotationAngle: .pi)
        //        }
        
        // MARK: - CGAffineTransform 혼합형, 세 가지 동작 한꺼번에
//        let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
//        let rotate = CGAffineTransform(rotationAngle: .pi / 4)
//        let move = CGAffineTransform(translationX: 200, y: 200)
//        let combine = scale.concatenating(move).concatenating(rotate)
//
//        UIView.animate(withDuration: 1.0,delay: 0) {
//
//            self.sparklesImageView.transform = combine
//        }
//
        // MARK: - .identity 속성으로 모든 변환 제거하기
        
        let scale = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let rotate = CGAffineTransform(rotationAngle: .pi / 4)
        let move = CGAffineTransform(translationX: 200, y: 200)
        let combine = scale.concatenating(move).concatenating(rotate)
        UIView.animate(withDuration: 1.0, animations: {
            self.sparklesImageView.transform = combine // combine 값 할당
        }) { finished in
            UIView.animate(withDuration: 1.0) {
                self.sparklesImageView.transform = .identity
            }
        }
    }
    
    func initPosition(){
        sparklesImageView.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
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
