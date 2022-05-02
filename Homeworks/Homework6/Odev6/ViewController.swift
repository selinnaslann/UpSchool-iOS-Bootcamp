//
//  ViewController.swift
//  Odev6
//
//  Created by Selin Aslan on 2.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kategorilerCollectionView: UICollectionView!
    
    var kategorilerListesi = [Kategoriler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kategorilerCollectionView.delegate = self
        kategorilerCollectionView.dataSource = self
        
        let k1 = Kategoriler(kategoriId: 1, kategoriAdi: "Pizza", kategoriResimAdi: "pizza")
        let k2 = Kategoriler(kategoriId: 2, kategoriAdi: "Breakfast & Brunch", kategoriResimAdi: "breakfast")
        let k3 = Kategoriler(kategoriId: 3, kategoriAdi: "Coffee & Tea", kategoriResimAdi: "coffee")
        let k4 = Kategoriler(kategoriId: 4, kategoriAdi: "Donuts", kategoriResimAdi: "donuts")
        let k5 = Kategoriler(kategoriId: 5, kategoriAdi: "Fast Food", kategoriResimAdi: "fastfood")
        let k6 = Kategoriler(kategoriId: 6, kategoriAdi: "Healthy", kategoriResimAdi: "healthy")
        let k7 = Kategoriler(kategoriId: 7, kategoriAdi: "Latest Deals", kategoriResimAdi: "latestdeals")
        let k8 = Kategoriler(kategoriId: 8, kategoriAdi: "Restaurant Rewards", kategoriResimAdi: "rewards")
        
        kategorilerListesi.append(k1)
        kategorilerListesi.append(k2)
        kategorilerListesi.append(k3)
        kategorilerListesi.append(k4)
        kategorilerListesi.append(k5)
        kategorilerListesi.append(k6)
        kategorilerListesi.append(k7)
        kategorilerListesi.append(k8)
        
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        let genislik = kategorilerCollectionView.frame.size.width
        let hucreGenislik = (genislik - 30) / 2
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik*0.9)
        kategorilerCollectionView.collectionViewLayout = tasarim
        
        
        let appearance = UITabBarAppearance()
        
        itemRenkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        itemRenkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
       
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
    }
    
    func itemRenkDegistir(itemAppearance:UITabBarItemAppearance) {
        
        itemAppearance.normal.iconColor = UIColor.darkGray
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        
        itemAppearance.selected.iconColor = UIColor.black
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]

        }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategorilerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kategori = kategorilerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriHucre", for: indexPath) as! KategorilerCollectionViewCell
        
        cell.kategoriImageView.image = UIImage(named: kategori.kategoriResimAdi!)
        cell.kategoriAdiLabel.text = kategori.kategoriAdi!
        
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 10.0
        
        
        return cell
    }
}

