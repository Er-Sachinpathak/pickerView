//
//  ViewController.swift
//  TaskIplTeam
//
//  Created by Mac on 05/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    var iplTeamNameArray = ["Csk Team","Mi Team","Kkr Team","Srh Team","Dd Team","Panjab Team","Rcb Team","Lgs Team"]
    var iplTeamImageArray = ["cskteamlogo","miteamlogo","kkrteamlogo","srhteamlogo","ddteamlogo","panjabteamlogo","rcbteamlogo","lgsteamlogo"]
    override func viewDidLoad() {
        super.viewDidLoad()
      
        pickerView.dataSource = self
        pickerView.delegate = self
    }

}
extension ViewController : UIPickerViewDelegate,UIPickerViewDataSource{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return iplTeamNameArray.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let teamImage = iplTeamImageArray[row]
        imageView.image = UIImage(named: teamImage)
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return iplTeamNameArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}


