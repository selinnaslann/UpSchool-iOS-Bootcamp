//
//  FilmlerCollectionViewCell.swift
//  DetayliCollectionViewKullanimi
//
//  Created by Selin Aslan on 29.04.2022.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikla(indexPath : IndexPath)
}

class FilmlerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmFiyatLabel: UILabel!
    @IBOutlet weak var filmAdiLabel: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikla(indexPath: indexPath!)
    }
}
