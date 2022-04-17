//
//  OyunEkraniVC.swift
//  CalismaYapisiVeWidgetsKullanimi
//
//  Created by Selin Aslan on 16.04.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {

    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true // back tuşunu kaldırma
        
        if let k = kisi {
            print("Kişi ad : \(k.ad!)")
            print("Kişi yaş : \(k.yas!)")
            print("Kişi boy : \(k.boy!)")
            print("Kişi bekar : \(k.bekar!)")
        }
    }


    @IBAction func bittiTikla(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    @IBAction func geriTikla(_ sender: Any) {
        //navigationController?.popViewController(animated: true) bir önceki sayfaya geri döner
        
        navigationController?.popToRootViewController(animated: true) //en başa döner.
    }
}
