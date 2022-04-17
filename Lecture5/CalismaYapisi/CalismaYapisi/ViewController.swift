//
//  ViewController.swift
//  CalismaYapisiVeWidgetsKullanimi
//
//  Created by Selin Aslan on 16.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // bu metot tek bir kere çalışır.sayfa açıldığında çalışır.
        print("viewDidLoad çalıştı.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear çalıştı.")
        //sayfa her göründüğü zaman çalışacak.
        // bu sayfaya geri dönüldüğünde.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear çalıştı. ")
    }


    @IBAction func baslaTikla(_ sender: Any) {
        // labelAnasayfa.text = "Merhaba"
        let kisi = Kisiler(ad: "Ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu çalıştı.")
        
        if segue.identifier == "oyunEkraninaGecis"{
            print("oyunEkraninaGecis çalıştı.")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    @IBAction func cikisTiikla(_ sender: Any) {
        print("Çıkış tıklandı.")
    }
    @IBAction func ekleTikla(_ sender: Any) {
        print("Ekle tıklandı.")
    }
}

