//
//  ViewController.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 26.05.2022.
//

import UIKit
import Kingfisher

class AnasayfaVC : UIViewController {
    
    @IBOutlet weak var yemeklerTableView: UITableView!
    
    var yemeklerListe = [Yemekler]()
    
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yemeklerTableView.delegate = self
        yemeklerTableView.dataSource = self
        AnasayfaRouter.createModule(ref: self)
        
        anasayfaPresenterNesnesi?.listele()
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!,NSAttributedString.Key.font: UIFont(name: "AdventPro-Light", size: 22)!]
       
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}

extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yemeklerListesi: Array<Yemekler>) {
        self.yemeklerListe = yemeklerListesi
        DispatchQueue.main.async {
            self.yemeklerTableView.reloadData()
        }
        
    }
}

extension AnasayfaVC : UITableViewDelegate,UITableViewDataSource,HucreProtocol {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemeklerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yemek = yemeklerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "yemekHucre", for: indexPath) as! YemekTableViewCell
        
        cell.yemekResimImageView.image = UIImage(named: yemek.yemek_resim_adi!)
        cell.yemekAdLabel.text = yemek.yemek_adi
        cell.yemekFiyatLabel.text = "\(yemek.yemek_fiyat!) ₺"
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(yemek.yemek_resim_adi!)")!
        cell.yemekResimImageView.kf.setImage(with: url)
        
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        cell.selectionStyle = .none
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.hucreArkaPlan.layer.cornerRadius = 10.0
        return cell
    }
    
    func buttonTiklandi(indexPath: IndexPath) {
        let yemek = yemeklerListe[indexPath.row]
        print("\(yemek.yemek_adi!) sepete eklendi.")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let yemek = yemeklerListe[indexPath.row]
        performSegue(withIdentifier: "toDetay", sender: yemek)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let yemek = sender as? Yemekler
            let gidilecekVC = segue.destination as! YemekDetayVC
            gidilecekVC.yemek = yemek
        }
    }
}

