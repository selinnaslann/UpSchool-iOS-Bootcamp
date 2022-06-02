//
//  YemekDetayVC.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 26.05.2022.
//

import UIKit
import Kingfisher

class YemekDetayVC: UIViewController {

    @IBOutlet weak var sepetButton: UIButton!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var yemekFiyat: UILabel!
    @IBOutlet weak var yemekResim: UIImageView!
    
    var yemek:Yemekler?
    var sepetYemek:Sepet_Yemekler?
    
    var yemekDetayPresenterNesnesi:ViewToPresenterYemekDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let y = yemek {
            self.navigationItem.title = y.yemek_adi
            yemekResim.image = UIImage(named: y.yemek_resim_adi!)
            yemekFiyat.text = "\(y.yemek_fiyat!) ₺"
            let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(y.yemek_resim_adi!)")!
            yemekResim.kf.setImage(with: url)
        }
        
        YemekDetayRouter.createModule(ref: self)
        
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!,NSAttributedString.Key.font: UIFont(name: "AdventPro-Light", size: 22)!]
       
        navigationController?.navigationBar.isTranslucent = true
    
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let y = yemek {
            yemekDetayPresenterNesnesi?.ekle(yemek_adi: y.yemek_adi!, yemek_resim_adi: y.yemek_resim_adi!, yemek_fiyat: Int(y.yemek_fiyat!)! , yemek_siparis_adet: Int(labelStepper.text!)!, kullanici_adi: "Selin")
        }
    
    }
    
    @IBAction func stepperDegisimKontrol(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
}
