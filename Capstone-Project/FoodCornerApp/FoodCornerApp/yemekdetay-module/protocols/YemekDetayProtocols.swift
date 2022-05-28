//
//  YemekDetayProtocols.swift
//  FoodCornerApp
//
//  Created by Selin Aslan on 27.05.2022.
//

import Foundation

protocol ViewToPresenterYemekDetayProtocol {
    var yemekDetayInteractor:PresenterToInteractorYemekDetayProtocol? {get set}
    
    func ekle(yemek_adi:String,yemek_resim_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int,kullanici_adi:String)
}

protocol PresenterToInteractorYemekDetayProtocol {
    
    func sepeteEkle(yemek_adi:String,yemek_resim_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int,kullanici_adi:String)
}



protocol PresenterToRouterYemekDetayProtocol {
    static func createModule(ref:YemekDetayVC)
}

