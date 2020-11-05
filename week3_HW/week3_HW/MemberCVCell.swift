//
//  MemberCVCell.swift
//  week3_HW
//
//  Created by 이윤진 on 2020/11/05.
//

import UIKit

class MemberCVCell: UICollectionViewCell {
    
    static let identifier = "MemberCVCell"
    
    let zzangImage: UIImageView = {
        
        let zzangImage = UIImageView()
        zzangImage.translatesAutoresizingMaskIntoConstraints = false
        return zzangImage
        
    }()
    
    let hashtagLabel: UILabel = {
        let hashtagLabel = UILabel()
        hashtagLabel.translatesAutoresizingMaskIntoConstraints = false
        return hashtagLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addContentView()
        makeConstraints()
    }
    
    
    
    private func addContentView() {
       
       
        contentView.addSubview(zzangImage)
        contentView.addSubview(hashtagLabel)
    }
    
    private func makeConstraints(){
        
        
        NSLayoutConstraint.activate([
        
            zzangImage.topAnchor.constraint(equalTo: self.topAnchor),
            zzangImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            zzangImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            zzangImage.widthAnchor.constraint(equalToConstant: 150),
            zzangImage.heightAnchor.constraint(equalToConstant: 150),
            hashtagLabel.topAnchor.constraint(equalTo: zzangImage.bottomAnchor, constant: 14),
            hashtagLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 7),
            hashtagLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 7),
            hashtagLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20)

        ])
        
        
    }
  
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
