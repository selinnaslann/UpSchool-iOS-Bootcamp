//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by Selin Aslan on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        let iptalAction = UIAlertAction(title: "Iptal", style: .cancel) { action in
            print("Iptal secildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam secildi")
        }
        alert.addAction(tamamAction)
        
        
        self.present(alert, animated: true)
    }
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .actionSheet)
        let iptalAction = UIAlertAction(title: "Iptal", style: .cancel) { action in
            print("Iptal secildi")
        }
        alert.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam secildi")
        }
        alert.addAction(tamamAction)
        
        
        self.present(alert, animated: true)
        
    }
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Baslik", message: "Mesaj", preferredStyle: .alert)
        
        alert.addTextField  { textfield in
            textfield.placeholder = "Veri giriniz"
            textfield.keyboardType = .numberPad
            textfield.isSecureTextEntry = true
        }
        
        
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            
            let textfield = alert.textFields! [0] as UITextField
            
            if let alinanVeri = textfield.text {
                print("Veri : \(alinanVeri)")
            }
        }
        
        alert.addAction(kaydetAction)
        
        self.present(alert, animated: true)
        
    }
}

