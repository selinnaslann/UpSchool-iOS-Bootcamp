//
//  ViewController.swift
//  CollectionViewKullanimi
//
//  Created by Selin Aslan on 27.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ulkelerCollectionView: UICollectionView!
    
    var ulkelerListesi = [Ulkeler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkelerCollectionView.delegate = self
        ulkelerCollectionView.dataSource = self
        
        let u1 = Ulkeler(ulkeId: 1, ulkeAd: "Türkiye", ulkeBaskent: "Ankara")
        let u2 = Ulkeler(ulkeId: 2, ulkeAd: "Fransa", ulkeBaskent: "Paris")
        let u3 = Ulkeler(ulkeId: 3, ulkeAd: "İtalya", ulkeBaskent: "Roma")
        let u4 = Ulkeler(ulkeId: 4, ulkeAd: "İngiltere", ulkeBaskent: "Londra")
        let u5 = Ulkeler(ulkeId: 5, ulkeAd: "Japonya", ulkeBaskent: "Tokyo")
        
        ulkelerListesi.append(u1)
        ulkelerListesi.append(u2)
        ulkelerListesi.append(u3)
        ulkelerListesi.append(u4)
        ulkelerListesi.append(u5)
        
        let tasarim = UICollectionViewFlowLayout()
        // Çevre boşluk
        tasarim.sectionInset = UIEdgeInsets(top: 10 , left: 10, bottom: 10, right: 10)
        // Yatay itemlar arası boşluk
        tasarim.minimumInteritemSpacing = 5
        // Dikey itemlar arası boşluk
        tasarim.minimumLineSpacing = 5
        // Collection genişlik
        let genislik = ulkelerCollectionView.frame.size.width
        // hücre genişliği
        let hucreGenislik = (genislik - 30) / 3
        tasarim.itemSize = CGSize(width: hucreGenislik, height: hucreGenislik)
        ulkelerCollectionView.collectionViewLayout = tasarim
        
    }
}

extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ulkelerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ulke = ulkelerListesi[indexPath.row]
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ulkeHucre", for: indexPath) as! UlkeCollectionViewCell
        
        cell.ulkeLabel.text = ulke.ulkeAd
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ulke = ulkelerListesi[indexPath.row]
        print("\(ulke.ulkeAd!) : \(ulke.ulkeBaskent!)")
    }
}

