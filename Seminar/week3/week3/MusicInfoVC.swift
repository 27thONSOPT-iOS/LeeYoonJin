//
//  MusicInfoVC.swift
//  week3
//
//  Created by 이윤진 on 2020/10/31.
//

import UIKit

class MusicInfoVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    var music: Music?
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicInfo()
        // Do any additional setup after loading the view.
    }
    
}

extension MusicInfoVC{
    
    func setMusicInfo(){
        
        if let music = music {
            titleLabel.text = music.title
            singerLabel.text = music.singer
            albumImageView.image = music.makeAlbumImage()
        }
    }
}
