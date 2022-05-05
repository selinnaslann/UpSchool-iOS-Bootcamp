//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Selin Aslan on 1.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        
        
        //kayit
        ud.set("Gizem", forKey: "ad")
        ud.set(23, forKey: "yas")
        ud.set(1.78, forKey: "boy")
        ud.set(true, forKey: "bekar")
        
        let liste = ["ali","ece"]
        ud.set(liste, forKey: "liste")
        
        let sehirler = ["16":"BURSA","34":"ISTANBUL"]
        ud.set(sehirler, forKey: "sehirler")
        
        //silme
        //ud.removeObject(forKey: "ad")
        
        
        // Okuma
        
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok" //eger value da bir sikinti varsa ?? kullanip sonrasina yazacagimiz degeri koyuyoruz
        let gelenYas = ud.integer(forKey: "yas") //varsayilan degeri 0
        let gelenBoy = ud.double(forKey: "boy") // varsayilan 0.0
        let gelenBekar = ud.bool(forKey: "bekar") // varsayilan false
        
        print("gelen ad : \(gelenAd)")
        print("gelen ad : \(gelenYas)")
        print("gelen ad : \(gelenBoy)")
        print("gelen ad : \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        
        for a in gelenListe {
            print("Gelen arkadas : \(a)")
        }
        
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String:String]()
        
        for (anahtar,deger) in gelenSehirler {
            print("Gelen sehir : \(anahtar) - \(deger)")
        }
        
        
        //sayac uygulamasi
        
        var sayac = ud.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        ud.set(sayac, forKey: "sayac")
        labelSayac.text = "Acilis sayisi : \(sayac)"
    }


}

