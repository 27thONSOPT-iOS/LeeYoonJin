//
//  PartBannerCell.swift
//  week3
//
//  Created by 이윤진 on 2020/10/31.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
    
    @IBOutlet weak var partImageView: UIImageView!
    
    func setImage(imageName: String) {
        partImageView.image = UIImage(named: imageName)
    }
}
