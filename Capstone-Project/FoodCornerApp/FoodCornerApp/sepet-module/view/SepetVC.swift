//
//  SepetVC.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 26.05.2022.
//

import UIKit
import Kingfisher

class SepetVC: UIViewController {

    
    @IBOutlet weak var toplamTutarLabel: UILabel!
    @IBOutlet weak var sepetYemeklerTableView: UITableView!
    
    var sepetPresenterNesnesi:ViewToPresenterSepetProtocol?
    var sepetYemeklerListe = [Sepet_Yemekler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        SepetRouter.createModule(ref: self)
        
        sepetYemeklerTableView.delegate = self
        sepetYemeklerTableView.dataSource = self
        
        
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named: "anaRenk")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk")!,NSAttributedString.Key.font: UIFont(name: "AdventPro-Light", size: 22)!]
       
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sepetPresenterNesnesi?.sepetiYukle(kullanici_adi: "Selin")
    }
}

extension SepetVC : PresenterToViewSepetProtocol {
    func vieweVeriGonder(sepetYemeklerListesi: Array<Sepet_Yemekler>) {
        self.sepetYemeklerListe = sepetYemeklerListesi
        DispatchQueue.main.async {
            self.sepetYemeklerTableView.reloadData()
            var total = 0
            for i in self.sepetYemeklerListe {
                total += Int(i.yemek_fiyat!)! * Int(i.yemek_siparis_adet!)!
            }
            self.toplamTutarLabel.text = "Toplam tutar: \(String(describing: total))" + " ₺"
        }
    }
}


extension SepetVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sepetYemeklerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sepet = sepetYemeklerListe[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "sepetHucre", for: indexPath) as! SepetTableViewCell
        
        cell.sepetYemekImageView.image = UIImage(named: sepet.yemek_resim_adi!)
        cell.sepetYemekAdi.text = sepet.yemek_adi
        cell.sepetYemekFiyat.text = "\(sepet.yemek_fiyat!) ₺"
        cell.sepetYemekAdet.text = "Adet : \(sepet.yemek_siparis_adet!)"
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(sepet.yemek_resim_adi!)")!
        cell.sepetYemekImageView.kf.setImage(with: url)
        
        cell.backgroundColor = UIColor(white: 0.95, alpha: 1)
        cell.sepetHucreArkaPlan.layer.cornerRadius = 10.0
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {
            (action,view,void) in
            let sepet = self.sepetYemeklerListe[indexPath.row]
            
            let alert = UIAlertController(title: "Silme işlemi", message: "\(sepet.yemek_adi!) silinsin mi? ", preferredStyle: .alert)
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel){action in}
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) {action in
                self.sepetPresenterNesnesi?.sil(sepet_yemek_id: Int(sepet.sepet_yemek_id!)!, kullanici_adi: String(sepet.kullanici_adi!))
            }
            alert.addAction(evetAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [silAction])
        
    }
}
