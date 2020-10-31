//
//  PickerViewTestVC.swift
//  week3
//
//  Created by 이윤진 on 2020/10/31.
//

import UIKit

class PickerViewTestVC: UIViewController {

    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    
    var parts: [Part] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        initLayout()
        partPickerView.delegate = self
        partPickerView.dataSource = self
        
        // Do any additional setup after loading the view.
        
    }
    
}


extension PickerViewTestVC {
    
    func setPartData(){
        parts.append(contentsOf: [
            Part(imageName: "plan", partName: "Plan"),
            Part(imageName: "design", partName: "Design"),
            Part(imageName: "server", partName: "Server"),
            Part(imageName: "ios",partName: "iOS"),
            Part(imageName: "android", partName: "Android"),
            Part(imageName: "web", partName: "Web")])
    }
    
    func initLayout(){
        
        let initPart = parts[0]
        partImageView.image = initPart.makeImage()
        partLabel.text = initPart.partName
    }
    
    
}

extension PickerViewTestVC: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row].partName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectPart = parts[row]
        // 이미지 지정
        self.partImageView.image = selectPart.makeImage()
        // 라벨 지정
        self.partLabel.text = selectPart.partName
    }
}

extension PickerViewTestVC: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int { // 열 개수
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int { // 행 개수
        return parts.count
    }
    
    
    
}
