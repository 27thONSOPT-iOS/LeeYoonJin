//
//  PartLeader.swift
//  week3_HW_Storyboard
//
//  Created by 이윤진 on 2020/11/06.
//

import UIKit

struct PartLeader{
    
    var leaderImage: UIImage?
    var leaderName: String
    var leaderHashTag: String
    init(name: String, hashtag: String) {
        self.leaderImage = UIImage(named: name)
        self.leaderName = name
        self.leaderHashTag = hashtag
    }
}
