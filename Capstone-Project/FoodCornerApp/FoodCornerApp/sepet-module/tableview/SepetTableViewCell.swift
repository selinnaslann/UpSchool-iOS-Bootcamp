//
//  SepetTableViewCell.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 26.05.2022.
//

import UIKit

class SepetTableViewCell: UITableViewCell {

    @IBOutlet weak var sepetHucreArkaPlan: UIView!
    @IBOutlet weak var sepetYemekImageView: UIImageView!
    @IBOutlet weak var sepetYemekAdet: UILabel!
    @IBOutlet weak var sepetYemekFiyat: UILabel!
    @IBOutlet weak var sepetYemekAdi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
