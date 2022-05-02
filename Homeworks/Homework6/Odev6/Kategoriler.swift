//
//  Kategoriler.swift
//  Odev6
//
//  Created by Selin Aslan on 2.05.2022.
//

import Foundation

class Kategoriler {
    var kategoriId:Int?
    var kategoriAdi:String?
    var kategoriResimAdi:String?
    
    init(kategoriId:Int,kategoriAdi:String,kategoriResimAdi:String) {
        self.kategoriId = kategoriId
        self.kategoriAdi = kategoriAdi
        self.kategoriResimAdi = kategoriResimAdi
        
    }
}
