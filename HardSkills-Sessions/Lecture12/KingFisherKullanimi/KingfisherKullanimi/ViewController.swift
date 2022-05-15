//
//  ViewController.swift
//  KingfisherKullanimi
//
//  Created by Selin Aslan on 8.05.2022.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resimGoster(resimAdi: "ayran.png")
    }


    @IBAction func buttonResim1(_ sender: Any) {
        resimGoster(resimAdi: "kofte.png")
        
    }
    @IBAction func buttonResim2(_ sender: Any) {
        resimGoster(resimAdi: "kadayif.png")
        
    }
    
    func resimGoster(resimAdi:String) {
        DispatchQueue.main.async {
            let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(resimAdi)")!
            self.imageView.kf.setImage(with: url)
        }
    }
}

