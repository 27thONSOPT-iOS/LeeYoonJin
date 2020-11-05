//
//  ViewController.swift
//  week3_HW
//
//  Created by 이윤진 on 2020/11/05.
//

import UIKit

class ViewController: UIViewController {

    
    var memberData: [MemberData] = []
    private let memberNames = ["juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok","juhyeok"]
    private let hashtags = ["#hereis#아요#내꿈은#사과농장#ENFP","#이제막학기#여러분들이랑_친해지고_싶어요#번개스터디환영","#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7","#총무꿈나무 #유총무 #현재_소식중 #풉","#마 #아요는 #처음입니다","#ENFP #STORM #울크박스 #@hwooolll #하늘콜렉터","#고객중심#고객행동데이터기반한#UX디자이너#워너비,,","#디팟장 #개자이너 #최종목표는행복","#서팟짱 #솝트3회차 #앱잼_요리_개발자 #UX/UI","#밍맹 #안팟장 #이래뵈도_귀여운거좋아함 #지박령 #허당","#플레이스픽 #ENFJ #기획_디자인_개발_다","#26기서버 #27기웹 #샵이_두개면_어떻게될까? ##"]
    let naviBar: UIView = {
        
        let naviBar = UIView()
        naviBar.backgroundColor = .black
        naviBar.translatesAutoresizingMaskIntoConstraints = false
       
        return naviBar
            
        
    }()
    
    let memberCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(MemberCVCell.self, forCellWithReuseIdentifier: MemberCVCell.identifier)
        cv.register(BannerHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,withReuseIdentifier: BannerHeaderView.identifier)
        
        return cv
    }() // 객체처럼...쟈스랑 비슷하다...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memberCV.delegate = self
        memberCV.dataSource = self
        makeData()
        addSubView()
        makeConstraints()
        // Do any additional setup after loading the view.
    }

    private func makeData() {
        
        for i in 0...11 {
            memberData.append(MemberData.init (
                zzangImage: UIImage(named: memberNames[i])!,
                hashTag: hashtags[i]
            ))
        }
    }
    func addSubView() {
        
        UICollectionViewFlowLayout().headerReferenceSize = CGSize(width: view.frame.width, height: 400)
        view.addSubview(naviBar)
        view.addSubview(memberCV)
        
    }
    func makeConstraints(){
        
        let guide = view.safeAreaLayoutGuide // safearea 기준이라 시간 상태바 바로 아래부터 시작
        NSLayoutConstraint.activate([
            naviBar.topAnchor.constraint(equalTo: view.topAnchor), // 수퍼뷰 기준(view.topAnchor로 하면 시간나오는 부분까지 다 가려버림)
            naviBar.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            naviBar.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            naviBar.heightAnchor.constraint(equalToConstant: 80),
            memberCV.topAnchor.constraint(equalTo: naviBar.bottomAnchor),
            memberCV.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            memberCV.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            memberCV.bottomAnchor.constraint(equalTo: guide.bottomAnchor)
        ])
        
    }
   

}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width-40) / 2, height: collectionView.frame.height / 4)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  memberNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MemberCVCell.identifier,
                                                            for: indexPath) as? MemberCVCell else { return UICollectionViewCell() }
        cell.zzangImage.image = memberData[indexPath.row].zzangImage ?? UIImage(named: "juhyeok")
        cell.hashtagLabel.text = memberData[indexPath.row].hashTag ?? ""
        cell.backgroundColor = .white
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                            viewForSupplementaryElementOfKind kind: String,
                            at indexPath: IndexPath) -> UICollectionReusableView{
        
    }
    
    
    
}
