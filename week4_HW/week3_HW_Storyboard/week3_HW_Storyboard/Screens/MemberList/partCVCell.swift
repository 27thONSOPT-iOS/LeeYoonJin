//
//  partCVCell.swift
//  week3_HW_Storyboard
//
//  Created by 이윤진 on 2020/11/06.
//

import UIKit

class partCVCell: UICollectionViewCell {
    @IBOutlet weak var leaderImageView: UIImageView!
    @IBOutlet weak var hashTagLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    static let identifier = "partCVCell"
    
    func setImage(imageName: String){
        leaderImageView.image = UIImage(named: imageName)
    }
    func sethashTag(hashTag: String){
        hashTagLabel.text = hashTag
    }
    func setName(name: String){
        nameLabel.text = name
    }
  
}
