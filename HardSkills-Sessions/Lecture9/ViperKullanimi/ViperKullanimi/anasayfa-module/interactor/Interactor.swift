//
//  Interactor.swift
//  ViperKullanimi
//
//  Created by Selin Aslan on 30.04.2022.
//

import Foundation

class Interactor : PresenterToInteractorProtocol{ //anaprotocolü bu sol tarafından bakıyoruz.
    var presenter: InteractorToPresenterProtocol?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let toplam = s1 + s2
            presenter?.presenteraVeriGonder(sonuc: String(toplam)) //veriyi iletmek adına kullandık.
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),let s2 = Int(sayi2) {
            let carpma = s1 * s2
            presenter?.presenteraVeriGonder(sonuc: String(carpma))
        }
    }
    
}
